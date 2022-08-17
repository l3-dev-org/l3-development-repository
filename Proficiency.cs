namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("Proficiency")]
    public partial class Proficiency
    {
        public Proficiency()
        {
            SkillsXPersons = new HashSet<SkillsXPerson>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(30)]
        public string Description { get; set; }

        public virtual ICollection<SkillsXPerson> SkillsXPersons { get; set; }
    }
}
