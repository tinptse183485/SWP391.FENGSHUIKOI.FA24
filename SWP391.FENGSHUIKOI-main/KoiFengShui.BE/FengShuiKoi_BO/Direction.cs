﻿using System;
using System.Collections.Generic;

namespace FengShuiKoi_BO
{
    public partial class Direction
    {
        public Direction()
        {
            LifePalaceDirections = new HashSet<LifePalaceDirection>();
        }

        public string Direction1 { get; set; } = null!;

        public virtual ICollection<LifePalaceDirection> LifePalaceDirections { get; set; }
    }
}
