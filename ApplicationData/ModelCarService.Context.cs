﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CarServiceKuchura_12.ApplicationData
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBCarServiceKuchura12Entities : DbContext
    {
        private static DBCarServiceKuchura12Entities _context;
        public DBCarServiceKuchura12Entities()
            : base("name=DBCarServiceKuchura12Entities")
        {
        }
    
        public static DBCarServiceKuchura12Entities GetContext()
        {
            if (_context == null)
                _context = new DBCarServiceKuchura12Entities();
            return _context;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<order> order { get; set; }
        public virtual DbSet<orderuserlist> orderuserlist { get; set; }
        public virtual DbSet<shift> shift { get; set; }
        public virtual DbSet<user> user { get; set; }
        public virtual DbSet<userlist> userlist { get; set; }
        public virtual DbSet<userrole> userrole { get; set; }
    }
}
