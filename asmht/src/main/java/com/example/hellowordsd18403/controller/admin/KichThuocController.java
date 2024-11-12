package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.KichThuoc;
import com.example.hellowordsd18403.entity.MauSac;
import com.example.hellowordsd18403.respository.KichThuocRepo;
import com.example.hellowordsd18403.respository.MauSacRepo;
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
@RequestMapping("asm/admin/kichthuoc")
public class KichThuocController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    KichThuocRepo kichThuocRepo;

    @GetMapping("")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {


        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<KichThuoc> danhSachKichThuoc;

        if (search != null && !search.isEmpty()) {
            danhSachKichThuoc = kichThuocRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachKichThuoc = kichThuocRepo.findAll(pageable);
        }

        model.addAttribute("danhSachKichThuoc", danhSachKichThuoc.getContent());
        model.addAttribute("totalPages", danhSachKichThuoc.getTotalPages());
        model.addAttribute("currentPage", page);


        return pages.KICHTHUOC_PAGE;
    }


    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("kichThuoc",new KichThuoc());
        return pages.ADD_KICHTHUOC_PAGE;
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("kichThuoc") KichThuoc kichThuoc, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<KichThuoc> danhSachKichThuoc = kichThuocRepo.findAll(pageable);

            model.addAttribute("danhSachKichThuoc", danhSachKichThuoc.getContent());
            model.addAttribute("totalPages", danhSachKichThuoc.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_KICHTHUOC_PAGE;
        };

        kichThuocRepo.save(kichThuoc);
        return pages.REDIRECT_KICHTHUOC_PAGE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        kichThuocRepo.deleteById(id);
        return pages.REDIRECT_KICHTHUOC_PAGE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("kichThuoc", kichThuocRepo.findById(id).get());
        return pages.SUA_KICHTHUOC_PAGE;
    }

    @PostMapping("update")
    public String update(@Valid @ModelAttribute("kichThuoc") KichThuoc kichThuoc, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<KichThuoc> danhSachKichThuoc = kichThuocRepo.findAll(pageable);

            model.addAttribute("danhSachKichThuoc", danhSachKichThuoc.getContent());
            model.addAttribute("totalPages", danhSachKichThuoc.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_KICHTHUOC_PAGE;
        };

        kichThuocRepo.save(kichThuoc);
        return pages.REDIRECT_KICHTHUOC_PAGE;
    }

}
