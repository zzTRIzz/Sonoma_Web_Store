package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.KichThuoc;
import com.example.hellowordsd18403.entity.SanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SanPhamRepo extends JpaRepository<SanPham, Integer> {
    @Query("SELECT ms FROM SanPham ms WHERE ms.tenSp LIKE %:search% OR ms.maSp LIKE %:search%")
    Page<SanPham> searchByNameOrId(@Param("search") String search, Pageable pageable);
}
