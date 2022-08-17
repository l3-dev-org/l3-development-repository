namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Award
    {
        public int Id { get; set; }

        [StringLength(20)]
        public string Name { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Date { get; set; }

        public int Languages_Id { get; set; }

        public virtual Language Language { get; set; }
    }
}
