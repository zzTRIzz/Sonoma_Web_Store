package com.example.hellowordsd18403.controller;

import com.example.hellowordsd18403.entity.NhanVien;
import com.example.hellowordsd18403.respository.KhachHangRepo;
import com.example.hellowordsd18403.respository.NhanVienRepo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/asm")
public class TrangChuController {
    UrlRouter page = new UrlRouter();

    @Autowired
    KhachHangRepo khachHangRepo;

    @Autowired
    NhanVienRepo nhanVienRepo;

    @GetMapping("test")
    public String test(Model model){
        model.addAttribute("danhSachNhanVien",nhanVienRepo.findAll());
        return "test";
    }
    @GetMapping("/index")
    public String showHome() {
        return page.TRANG_CHU;
    }

    @GetMapping("/admin")
    public String showAdmin(Model model, HttpSession session) {
        String tenNguoiDung = (String) session.getAttribute("tenNguoiDung");
        String vaiTro = (String) session.getAttribute("vaiTro");

        if (tenNguoiDung != null && "admin".equals(vaiTro)) {
            model.addAttribute("tenNguoiDung", tenNguoiDung);
            return page.ADMIN;
        }
        return page.REDIRECT_TRANG_CHU;
    }

    @GetMapping("/nhanvien")
    public String showNhanVien(Model model, HttpSession session) {
        String tenNguoiDung = (String) session.getAttribute("tenNguoiDung");
        String vaiTro = (String) session.getAttribute("vaiTro");

        if (tenNguoiDung != null && "nhanVien".equals(vaiTro)) {
            model.addAttribute("tenNguoiDung", tenNguoiDung);
            return page.NV_PAGE;
        }
        return page.REDIRECT_TRANG_CHU;
    }

    @PostMapping("/login")
    public String showLogin(HttpSession session, Model model,
                            @RequestParam("action") String buttonDangNhap,
                            @RequestParam("tenDangNhap") String tenDangNhap,
                            @RequestParam("matKhau") String matKhau) {
        if ("dangnhap".equals(buttonDangNhap)) {
            for (NhanVien nhanVien : nhanVienRepo.findAll()) {
                if (nhanVien.getTenDangNhap().trim().equals(tenDangNhap) &&
                        nhanVien.getMatKhau().trim().equals(matKhau)) {
                    session.setAttribute("tenNguoiDung", nhanVien.getTen());
                    String vaiTro = nhanVien.getTrangThai() ? "admin" : "nhanVien";
                    session.setAttribute("vaiTro", vaiTro);

                    return "admin".equals(vaiTro) ? "redirect:/asm/admin" : "redirect:/asm/nhanvien";
                }
            }
            model.addAttribute("error", "Tài khoản không đúng");
            return page.TRANG_CHU;
        } else {
            return page.REDIRECT_TRANG_CHU;
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Xóa phiên
        return page.REDIRECT_TRANG_CHU; // Trở về trang chính
    }

//     Các phương thức quản lý khác...


}
