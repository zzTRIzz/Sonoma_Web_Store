package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.KichThuoc;
import com.example.hellowordsd18403.entity.MauSac;
import com.example.hellowordsd18403.entity.SanPham;
import com.example.hellowordsd18403.entity.SanPhamCt;
import com.example.hellowordsd18403.respository.KichThuocRepo;
import com.example.hellowordsd18403.respository.MauSacRepo;
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

import java.util.List;

@Controller
@RequestMapping("asm/admin/sanphamct")
//TODO:
public class SanPhamCtController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    SanPhamCtRepo sanPhamCtRepo;

    @GetMapping("")
    public String trangSPCT(
            @RequestParam(value = "search", required = false) String search,
            @RequestParam(value = "page", defaultValue = "0") int page,
            Model model) {

        Pageable pageable = PageRequest.of(page, 2); // Mỗi trang có 2 bản ghi
        Page<SanPhamCt> danhSachSanPhamCt;

        if (search != null && !search.isEmpty()) {
            danhSachSanPhamCt = sanPhamCtRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachSanPhamCt = sanPhamCtRepo.findAll(pageable);
        }

        model.addAttribute("danhSachSanPhamCt", danhSachSanPhamCt.getContent());
        model.addAttribute("totalPages", danhSachSanPhamCt.getTotalPages());
        model.addAttribute("currentPage", page);

        return pages.SANPHAMCT_PAGE;  // Đảm bảo tên JSP là đúng
    }


    @GetMapping("add")
    public String trangAdd(Model model){
        model.addAttribute("sanPhamCt",new SanPhamCt());
        return pages.ADD_SANPHAMCT_PAGE;
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("sanPhamCt") SanPhamCt sanPhamCt, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<SanPhamCt> danhSachSanPhamCt = sanPhamCtRepo.findAll(pageable);

            model.addAttribute("danhSachSanPhamCt", danhSachSanPhamCt.getContent());
            model.addAttribute("totalPages", danhSachSanPhamCt.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.ADD_SANPHAMCT_PAGE;
        };

        sanPhamCtRepo.save(sanPhamCt);
        return pages.REDIRECT_SANPHAMCT_PAGE;
    }

    @GetMapping("delete")
    public String xoa(@RequestParam("id") Integer id){
        sanPhamCtRepo.deleteById(id);
        return pages.REDIRECT_SANPHAMCT_PAGE;
    }

    @GetMapping("update/{id}")
    public String trangSua(@PathVariable("id") Integer id, Model model){
        model.addAttribute("sanPhamCt", sanPhamCtRepo.findById(id).get());
        return pages.SUA_SANPHAMCT_PAGE;
    }

    @PostMapping("update")
    public String update(@Valid @ModelAttribute("sanPhamCt") SanPhamCt sanPhamCt, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2);
            Page<SanPhamCt> danhSachSanPhamCt = sanPhamCtRepo.findAll(pageable);

            model.addAttribute("danhSachSanPhamCt", danhSachSanPhamCt.getContent());
            model.addAttribute("totalPages", danhSachSanPhamCt.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.SUA_SANPHAMCT_PAGE;
        };

        sanPhamCtRepo.save(sanPhamCt);
        return pages.REDIRECT_SANPHAMCT_PAGE;
    }



    @Autowired
    SanPhamRepo sanPhamRepo;
    @Autowired
    MauSacRepo mauSacRepo;
    @Autowired
    KichThuocRepo kichThuocRepo;

    @ModelAttribute("listSanPham")
    public List<SanPham> getSanPhams(){
        return sanPhamRepo.findAll();
    }
    @ModelAttribute("listMauSac")
    public List<MauSac> getMauSacs(){
        return mauSacRepo.findAll();
    }
    @ModelAttribute("listKichThuoc")
    public List<KichThuoc> getKichThuocs(){
        return kichThuocRepo.findAll();
    }

}
