﻿using System;
using System.Collections.Generic;

namespace Test02.Models.Entities
{
    public partial class LoaiHang
    {
        public LoaiHang()
        {
            HangHoas = new HashSet<HangHoa>();
        }

        public int MaLoai { get; set; }
        public string TenLoai { get; set; } = null!;

        public virtual ICollection<HangHoa> HangHoas { get; set; }
    }
}
