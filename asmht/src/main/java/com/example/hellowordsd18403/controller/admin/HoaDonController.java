package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.*;
import com.example.hellowordsd18403.respository.*;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("asm/admin/hoadon")
public class HoaDonController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    HoaDonRepo hoaDonRepo;

    @GetMapping("")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {


        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<HoaDon> danhSachHoaDon;

        if (search != null && !search.isEmpty()) {
            danhSachHoaDon = hoaDonRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachHoaDon = hoaDonRepo.findAll(pageable);
        }

        model.addAttribute("danhSachHoaDon", danhSachHoaDon.getContent());
        model.addAttribute("totalPages", danhSachHoaDon.getTotalPages());
        model.addAttribute("currentPage", page);


        return pages.HOADON_PAGE;
    }


    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("hoaDon",new HoaDon());
        return pages.ADD_HOADON_PAGE;
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("hoaDon") HoaDon hoaDon, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<HoaDon> danhSachHoaDon = hoaDonRepo.findAll(pageable);

            model.addAttribute("danhSachHoaDon", danhSachHoaDon.getContent());
            model.addAttribute("totalPages", danhSachHoaDon.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_HOADON_PAGE;
        };

        hoaDonRepo.save(hoaDon);
        return pages.REDIRECT_HOADON_PAGEE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        hoaDonRepo.deleteById(id);
        return pages.REDIRECT_HOADON_PAGEE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("hoaDon", hoaDonRepo.findById(id).get());
        return pages.SUA_HOADON_PAGE;
    }


    @PostMapping("update")
    public String update(@Valid @ModelAttribute("hoaDon") HoaDon hoaDon, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<HoaDon> danhSachHoaDon = hoaDonRepo.findAll(pageable);

            model.addAttribute("danhSachHoaDon", danhSachHoaDon.getContent());
            model.addAttribute("totalPages", danhSachHoaDon.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_HOADON_PAGE;
        };

        hoaDonRepo.save(hoaDon);
        return pages.REDIRECT_HOADON_PAGEE;
    }

    @Autowired
    NhanVienRepo nhanVienRepo;
    @Autowired
    KhachHangRepo khachHangRepo;

    @ModelAttribute("listNhanVien")
    public List<NhanVien> getNhanViens(){
        return nhanVienRepo.findAll();
    }
    @ModelAttribute("listKhachHang")
    public List<KhachHang> getKhachHangs(){
        return khachHangRepo.findAll();
    }



}
