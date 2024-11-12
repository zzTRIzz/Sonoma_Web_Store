package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.KichThuoc;
import com.example.hellowordsd18403.entity.SanPhamCt;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SanPhamCtRepo extends JpaRepository<SanPhamCt, Integer> {
//    @Query("SELECT ms FROM SanPhamCt ms WHERE ms.sanPhamByIdSanPham.id = :id_search AND (ms.maSpct LIKE %:search% OR ms.mauSacByIdMauSac.ten LIKE %:search% OR ms.kichThuocByIdKichThuoc.ten LIKE %:search%)")
//    Page<SanPhamCt> searchByNameOrId(@Param("id_search") Integer id_search, @Param("search") String search, Pageable pageable);
//    @Query("SELECT ms FROM SanPhamCt ms WHERE ms.sanPhamByIdSanPham.id = :id_search")
//    Page<SanPhamCt> findBySanPhamId(@Param("id_search")Integer sanPhamId, Pageable pageable);
    @Query("SELECT ms FROM SanPhamCt ms WHERE ms.sanPhamByIdSanPham.tenSp LIKE %:search% OR ms.maSpct LIKE %:search% OR ms.mauSacByIdMauSac.ten LIKE %:search% OR ms.kichThuocByIdKichThuoc.ten LIKE %:search%")
    Page<SanPhamCt> searchByNameOrId(@Param("search") String search, Pageable pageable);
}

