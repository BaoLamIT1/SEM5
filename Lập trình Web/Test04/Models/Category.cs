﻿using System;
using System.Collections.Generic;

namespace Test04.Models;

public partial class Category
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? NameVn { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
