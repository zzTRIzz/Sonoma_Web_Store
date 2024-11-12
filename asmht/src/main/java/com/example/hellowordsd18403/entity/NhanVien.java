package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "NhanVien")
public class NhanVien {
    private Integer id;
    @NotBlank(message = "Mã nhân viên không được để trống")
    private String maNv;

    @NotBlank(message = "Tên không được để trống")
    private String ten;

    @NotBlank(message = "Tên đăng nhập không được để trống")
    private String tenDangNhap;

    @NotBlank(message = "Mật khẩu không được để trống")
    private String matKhau;
    private Boolean trangThai;
    private Collection<HoaDon> hoaDonsById;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "maNV")
    public String getMaNv() {
        return maNv;
    }

    public void setMaNv(String maNv) {
        this.maNv = maNv;
    }

    @Basic
    @Column(name = "ten")
    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    @Basic
    @Column(name = "tenDangNhap")
    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    @Basic
    @Column(name = "matKhau")
    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    @Basic
    @Column(name = "trangThai")
    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        NhanVien nhanVien = (NhanVien) o;
        return Objects.equals(id, nhanVien.id) && Objects.equals(maNv, nhanVien.maNv) && Objects.equals(ten, nhanVien.ten) && Objects.equals(tenDangNhap, nhanVien.tenDangNhap) && Objects.equals(matKhau, nhanVien.matKhau) && Objects.equals(trangThai, nhanVien.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, maNv, ten, tenDangNhap, matKhau, trangThai);
    }

    @OneToMany(mappedBy = "nhanVienByIdNv")
    public Collection<HoaDon> getHoaDonsById() {
        return hoaDonsById;
    }

    public void setHoaDonsById(Collection<HoaDon> hoaDonsById) {
        this.hoaDonsById = hoaDonsById;
    }
}
