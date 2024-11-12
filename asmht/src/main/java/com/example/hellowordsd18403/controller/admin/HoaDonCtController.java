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
@RequestMapping("asm/admin/hoadonct")
public class HoaDonCtController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    HoaDonChiTietRepo hoaDonChiTietRepo;

    @GetMapping("")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {


        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<HoaDonChiTiet> danhSachHoaDonCt;

        if (search != null && !search.isEmpty()) {
            danhSachHoaDonCt = hoaDonChiTietRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachHoaDonCt = hoaDonChiTietRepo.findAll(pageable);
        }

        model.addAttribute("danhSachHoaDonCt", danhSachHoaDonCt.getContent());
        model.addAttribute("totalPages", danhSachHoaDonCt.getTotalPages());
        model.addAttribute("currentPage", page);


        return pages.HOADONCT_PAGE;
    }


    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("hoaDonCt",new HoaDonChiTiet());
        return pages.ADD_HOADONCT_PAGE;
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("hoaDonCt") HoaDonChiTiet hoaDonChiTiet, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<HoaDonChiTiet> danhSachHoaDonCt = hoaDonChiTietRepo.findAll(pageable);

            model.addAttribute("danhSachHoaDonCt", danhSachHoaDonCt.getContent());
            model.addAttribute("totalPages", danhSachHoaDonCt.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_HOADONCT_PAGE;
        };

        hoaDonChiTietRepo.save(hoaDonChiTiet);
        return pages.REDIRECT_HOADONCT_PAGEE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        hoaDonChiTietRepo.deleteById(id);
        return pages.REDIRECT_HOADONCT_PAGEE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("hoaDonCt", hoaDonChiTietRepo.findById(id).get());
        return pages.SUA_HOADONCT_PAGE;
    }

    @PostMapping("update")
    public String update(@Valid @ModelAttribute("hoaDonCt") HoaDonChiTiet hoaDonChiTiet, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<HoaDonChiTiet> danhSachHoaDonCt = hoaDonChiTietRepo.findAll(pageable);

            model.addAttribute("danhSachHoaDonCt", danhSachHoaDonCt.getContent());
            model.addAttribute("totalPages", danhSachHoaDonCt.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_HOADONCT_PAGE;
        };

        hoaDonChiTietRepo.save(hoaDonChiTiet);
        return pages.REDIRECT_HOADONCT_PAGEE;
    }


    @Autowired
    SanPhamCtRepo sanPhamCtRepo;
    @Autowired
    HoaDonRepo hoaDonRepo;

    @ModelAttribute("listSanPhamCt")
    public List<SanPhamCt> getSanPhamCts(){
        return sanPhamCtRepo.findAll();
    }
    @ModelAttribute("listKhachHang")
    public List<HoaDon> getHoaDons(){
        return hoaDonRepo.findAll();
    }



}
