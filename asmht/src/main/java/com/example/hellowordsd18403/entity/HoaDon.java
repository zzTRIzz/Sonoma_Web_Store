package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Collection;
import java.util.Objects;

@Entity
public class HoaDon {
    private Integer id;
    private LocalDate ngayMuaHang;
    private Boolean trangThai;
    private NhanVien nhanVienByIdNv;
    private KhachHang khachHangByIdKh;
    private Collection<HoaDonChiTiet> hoaDonChiTietsById;

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
    @Column(name = "ngayMuaHang")
    public LocalDate getNgayMuaHang() {
        return ngayMuaHang;
    }

    public void setNgayMuaHang(LocalDate ngayMuaHang) {
        this.ngayMuaHang = ngayMuaHang;
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
        HoaDon hoaDon = (HoaDon) o;
        return Objects.equals(id, hoaDon.id) && Objects.equals(ngayMuaHang, hoaDon.ngayMuaHang) && Objects.equals(trangThai, hoaDon.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ngayMuaHang, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "idNV", referencedColumnName = "id")
    public NhanVien getNhanVienByIdNv() {
        return nhanVienByIdNv;
    }

    public void setNhanVienByIdNv(NhanVien nhanVienByIdNv) {
        this.nhanVienByIdNv = nhanVienByIdNv;
    }

    @ManyToOne
    @JoinColumn(name = "idKH", referencedColumnName = "id")
    public KhachHang getKhachHangByIdKh() {
        return khachHangByIdKh;
    }

    public void setKhachHangByIdKh(KhachHang khachHangByIdKh) {
        this.khachHangByIdKh = khachHangByIdKh;
    }

    @OneToMany(mappedBy = "hoaDonByIdHoaDon")
    public Collection<HoaDonChiTiet> getHoaDonChiTietsById() {
        return hoaDonChiTietsById;
    }

    public void setHoaDonChiTietsById(Collection<HoaDonChiTiet> hoaDonChiTietsById) {
        this.hoaDonChiTietsById = hoaDonChiTietsById;
    }
}
