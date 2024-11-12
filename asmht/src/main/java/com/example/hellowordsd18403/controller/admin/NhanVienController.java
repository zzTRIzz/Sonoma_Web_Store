package com.example.hellowordsd18403.controller.admin;

import com.example.hellowordsd18403.controller.UrlRouter;
import com.example.hellowordsd18403.entity.NhanVien;
import com.example.hellowordsd18403.respository.NhanVienRepo;
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
@RequestMapping("asm/admin")
public class NhanVienController {
    UrlRouter pages = new UrlRouter();

    @Autowired
    NhanVienRepo nhanVienRepo;

    @GetMapping("nhanvien")
    public String hienThi(@RequestParam(value = "search", required = false) String search,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          Model model) {


        Pageable pageable = PageRequest.of(page, 2); // 2 bản ghi mỗi trang
        Page<NhanVien> danhSachNhanVien;

        if (search != null && !search.isEmpty()) {
            danhSachNhanVien = (Page<NhanVien>) nhanVienRepo.searchByNameOrId(search, pageable);
        } else {
            danhSachNhanVien = nhanVienRepo.findAll(pageable);
        }

        model.addAttribute("danhSachNhanVien", danhSachNhanVien.getContent());
        model.addAttribute("totalPages", danhSachNhanVien.getTotalPages());
        model.addAttribute("currentPage", page);

        /*
         * spring form : NhanvienDTO
         * */
        model.addAttribute("nhanVien", new NhanVien());

        return pages.QLNV_PAGE;
    }

    @PostMapping("nhanvien/add")
    public String addNhanVien(@Valid @ModelAttribute("nhanVien") NhanVien nhanVien, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            Pageable pageable = PageRequest.of(0, 2); // Lấy danh sách nhân viên với trang đầu tiên
            Page<NhanVien> danhSachNhanVien = nhanVienRepo.findAll(pageable);

            model.addAttribute("danhSachNhanVien", danhSachNhanVien.getContent());
            model.addAttribute("totalPages", danhSachNhanVien.getTotalPages());
            model.addAttribute("currentPage", 0);
            return pages.QLNV_PAGE; // Trả lại trang nếu có lỗi
        };

        nhanVienRepo.save(nhanVien); // Giả sử bạn đã tạo service để lưu nhân viên
        return pages.REDIRECT_QLNV_PAGE; // Chuyển hướng đến danh sách nhân viên
    }

    @GetMapping("nhanvien/delete")
    public String xoa(@RequestParam("id") Integer id){
        nhanVienRepo.deleteById(id);
        return pages.REDIRECT_QLNV_PAGE;
    }

    @GetMapping("nhanvien/update/{id}")
    public String update(@PathVariable("id") Integer id,Model model){
        model.addAttribute("nv",nhanVienRepo.findById(id).get());
        return pages.SUA_QLNV_PAGE;
    }

    @PostMapping("nhanvien/update")
    public String updateNhanVien(@Valid @ModelAttribute("nhanVien") NhanVien nhanVien, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "redirect:/asm/admin/nhanvien/update/" + nhanVien.getId(); // hoặc về trang cập nhật để hiển thị lỗi
        }
        nhanVienRepo.save(nhanVien);
        return pages.REDIRECT_QLNV_PAGE;
    }








}
