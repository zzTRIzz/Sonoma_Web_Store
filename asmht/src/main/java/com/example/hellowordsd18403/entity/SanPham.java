package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.util.Collection;
import java.util.Objects;

@Entity
public class SanPham {
    private Integer id;
    @NotBlank(message = "không được để trống")
    private String maSp;
    @NotBlank(message = "không được để trống")
    private String tenSp;
    private Boolean trangThai;
    private Collection<SanPhamCt> sanPhamCtsById;

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
    @Column(name = "maSP")
    public String getMaSp() {
        return maSp;
    }

    public void setMaSp(String maSp) {
        this.maSp = maSp;
    }

    @Basic
    @Column(name = "tenSP")
    public String getTenSp() {
        return tenSp;
    }

    public void setTenSp(String tenSp) {
        this.tenSp = tenSp;
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
        SanPham sanPham = (SanPham) o;
        return Objects.equals(id, sanPham.id) && Objects.equals(maSp, sanPham.maSp) && Objects.equals(tenSp, sanPham.tenSp) && Objects.equals(trangThai, sanPham.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, maSp, tenSp, trangThai);
    }

    @OneToMany(mappedBy = "sanPhamByIdSanPham")
    public Collection<SanPhamCt> getSanPhamCtsById() {
        return sanPhamCtsById;
    }

    public void setSanPhamCtsById(Collection<SanPhamCt> sanPhamCtsById) {
        this.sanPhamCtsById = sanPhamCtsById;
    }
}
