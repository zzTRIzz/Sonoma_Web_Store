package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.util.Collection;
import java.util.Objects;

@Entity
public class KhachHang {
    private Integer id;
    @NotBlank(message = "không được để trống")
    private String ten;
    @NotBlank(message = "không được để trống")
    private String maKh;
    @NotBlank(message = "không được để trống")
    private String sdt;
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
    @Column(name = "ten")
    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    @Basic
    @Column(name = "maKH")
    public String getMaKh() {
        return maKh;
    }

    public void setMaKh(String maKh) {
        this.maKh = maKh;
    }

    @Basic
    @Column(name = "sdt")
    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
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
        KhachHang khachHang = (KhachHang) o;
        return Objects.equals(id, khachHang.id) && Objects.equals(ten, khachHang.ten) && Objects.equals(maKh, khachHang.maKh) && Objects.equals(sdt, khachHang.sdt) && Objects.equals(trangThai, khachHang.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ten, maKh, sdt, trangThai);
    }

    @OneToMany(mappedBy = "khachHangByIdKh")
    public Collection<HoaDon> getHoaDonsById() {
        return hoaDonsById;
    }

    public void setHoaDonsById(Collection<HoaDon> hoaDonsById) {
        this.hoaDonsById = hoaDonsById;
    }
}
