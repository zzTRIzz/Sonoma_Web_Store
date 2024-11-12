package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.KichThuoc;
import com.example.hellowordsd18403.entity.SanPham;
import com.example.hellowordsd18403.entity.SanPhamCt;
import com.example.hellowordsd18403.respository.SanPhamCtRepo;
import com.example.hellowordsd18403.respository.SanPhamRepo;
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
@RequestMapping("asm/admin/sanpham")
public class SanPhamController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    SanPhamRepo sanPhamRepo;

    @GetMapping("")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {


        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<SanPham> danhSachSanPham;

        if (search != null && !search.isEmpty()) {
            danhSachSanPham = sanPhamRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachSanPham = sanPhamRepo.findAll(pageable);
        }

        model.addAttribute("danhSachSanPham", danhSachSanPham.getContent());
        model.addAttribute("totalPages", danhSachSanPham.getTotalPages());
        model.addAttribute("currentPage", page);


        return pages.SANPHAM_PAGE;
    }


    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("sanPham",new SanPham());
        return pages.ADD_SANPHAM_PAGE;
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("sanPham") SanPham sanPham, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<SanPham> danhSachSanPham = sanPhamRepo.findAll(pageable);

            model.addAttribute("danhSachSanPham", danhSachSanPham.getContent());
            model.addAttribute("totalPages", danhSachSanPham.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_SANPHAM_PAGE;
        };

        sanPhamRepo.save(sanPham);
        return pages.REDIRECT_SANPHAM_PAGE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        sanPhamRepo.deleteById(id);
        return pages.REDIRECT_SANPHAM_PAGE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("sanPham", sanPhamRepo.findById(id).get());
        return pages.SUA_SANPHAM_PAGE;
    }

    @PostMapping("update")
    public String update(@Valid @ModelAttribute("sanPham") SanPham sanPham, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<SanPham> danhSachSanPham = sanPhamRepo.findAll(pageable);

            model.addAttribute("danhSachSanPham", danhSachSanPham.getContent());
            model.addAttribute("totalPages", danhSachSanPham.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_SANPHAM_PAGE;
        };

        sanPhamRepo.save(sanPham);
        return pages.REDIRECT_SANPHAM_PAGE;
    }




}
