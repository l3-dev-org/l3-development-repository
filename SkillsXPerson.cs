namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("SkillsXPerson")]
    public partial class SkillsXPerson
    {
        public int Id { get; set; }

        public DateTime CreationDate { get; set; }

        public long Person_Id { get; set; }

        public int Skills_Id { get; set; }

        public int Proficiency_Id { get; set; }

        public virtual Person Person { get; set; }

        public virtual Proficiency Proficiency { get; set; }

        public virtual Skill Skill { get; set; }
    }
}
