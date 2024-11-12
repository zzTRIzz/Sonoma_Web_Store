package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.KhachHang;
import com.example.hellowordsd18403.entity.MauSac;
import com.example.hellowordsd18403.entity.NhanVien;
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
@RequestMapping("asm/admin/mausac")
public class MauSacController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    MauSacRepo mauSacRepo;

    @GetMapping("")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {


        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<MauSac> danhSachMauSac;

        if (search != null && !search.isEmpty()) {
            danhSachMauSac = mauSacRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachMauSac = mauSacRepo.findAll(pageable);
        }

        model.addAttribute("danhSachMauSac", danhSachMauSac.getContent());
        model.addAttribute("totalPages", danhSachMauSac.getTotalPages());
        model.addAttribute("currentPage", page);


        return pages.MAUSAC_PAGE;
    }

    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("mauSac",new MauSac());
        return pages.ADD_MAUSAC_PAGE;
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("mauSac") MauSac mauSac, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<MauSac> danhSachMauSac = mauSacRepo.findAll(pageable);

            model.addAttribute("danhSachMauSac", danhSachMauSac.getContent());
            model.addAttribute("totalPages", danhSachMauSac.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_MAUSAC_PAGE;
        };

        mauSacRepo.save(mauSac);
        return pages.REDIRECT_MAUSAC_PAGE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        mauSacRepo.deleteById(id);
        return pages.REDIRECT_MAUSAC_PAGE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("mauSac", mauSacRepo.findById(id).get());
        return pages.SUA_MAUSAC_PAGE;
    }

    @PostMapping("update")
    public String update(@Valid @ModelAttribute("mauSac") MauSac mauSac, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<MauSac> danhSachMauSac = mauSacRepo.findAll(pageable);

            model.addAttribute("danhSachMauSac", danhSachMauSac.getContent());
            model.addAttribute("totalPages", danhSachMauSac.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_MAUSAC_PAGE;
        };

        mauSacRepo.save(mauSac);
        return pages.REDIRECT_MAUSAC_PAGE;
    }


}
