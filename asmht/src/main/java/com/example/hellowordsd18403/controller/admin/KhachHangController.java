package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.KhachHang;
import com.example.hellowordsd18403.entity.NhanVien;
import com.example.hellowordsd18403.respository.KhachHangRepo;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("asm/admin/khachhang")
public class KhachHangController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    KhachHangRepo khachHangRepo;

    @GetMapping("")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {
        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<KhachHang> danhSachKhachHang;

        if (search != null && !search.isEmpty()) {
            danhSachKhachHang = khachHangRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachKhachHang = khachHangRepo.findAll(pageable);
        }

        model.addAttribute("danhSachKhachHang", danhSachKhachHang.getContent());
        model.addAttribute("totalPages", danhSachKhachHang.getTotalPages());
        model.addAttribute("currentPage", page);

        return pages.QLKH_PAGE; // Đảm bảo rằng bạn đã định nghĩa QLNV_PAGE trong UrlRouter
    }

    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("khachHang",new KhachHang());
        return pages.ADD_KhachHang_PAGE;
    }


    @PostMapping("add")
    public String add(@Valid @ModelAttribute("khachHang") KhachHang khachHang, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<KhachHang> danhSachKhachHang = khachHangRepo.findAll(pageable);

            model.addAttribute("danhSachKhachHang", danhSachKhachHang.getContent());
            model.addAttribute("totalPages", danhSachKhachHang.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_KhachHang_PAGE;
        };

        khachHangRepo.save(khachHang);
        return pages.REDIRECT_QLKH_PAGE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        khachHangRepo.deleteById(id);
        return pages.REDIRECT_QLKH_PAGE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("khachHang",khachHangRepo.findById(id).get());
        return pages.SUA_KhachHang_PAGE;
    }

    @PostMapping("update")
    public String udpate(@Valid @ModelAttribute("khachHang") KhachHang khachHang, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<KhachHang> danhSachKhachHang = khachHangRepo.findAll(pageable);

            model.addAttribute("danhSachKhachHang", danhSachKhachHang.getContent());
            model.addAttribute("totalPages", danhSachKhachHang.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_KhachHang_PAGE;
        };

        khachHangRepo.save(khachHang);
        return pages.REDIRECT_QLKH_PAGE;
    }




}
