﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Test04.Models;

public partial class Product
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

	[Required(ErrorMessage = "Price is required")]
	[Range(100, 500, ErrorMessage = "Price must be between 100 and 500")]

	public double UnitPrice { get; set; }

    public string? Image { get; set; }

    public bool Available { get; set; }

    public int CategoryId { get; set; }

    public string? Description { get; set; }

    public int ProviderId { get; set; }

    public virtual Category? Category { get; set; } = null!;

    public virtual ICollection<Comment> Comments { get; set; } = new List<Comment>();

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();

    public virtual Provider Provider { get; set; } = null!;
}
