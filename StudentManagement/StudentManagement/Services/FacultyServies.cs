﻿using StudentManagement.Models;
using StudentManagement.Objects;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagement.Services
{
    public class FacultyServices
    {
        private static FacultyServices s_instance;

        public static FacultyServices Instance => s_instance ?? (s_instance = new FacultyServices());

        public FacultyServices() { }

        public DbSet<Faculty> LoadFacultyList()
        {
            return DataProvider.Instance.Database.Faculties;
        }

        /// <summary>
        /// Convert FacultyCard To Faculty
        /// </summary>
        /// <param name="facultyCard"></param>
        /// <returns>Faculty</returns>
        public Faculty ConvertFacultyCardToFaculty(FacultyCard facultyCard)
        {
            Faculty faculty = new Faculty()
            {
                Id = facultyCard.Id,
                DisplayName = facultyCard.DisplayName
            };

            return faculty;
        }

        /// <summary>
        /// Convert Faculty To Faculty Card
        /// </summary>
        /// <param name="faculty"></param>
        /// <returns>FacultyCard</returns>
        public FacultyCard ConvertFacultyToFacultyCard(Faculty faculty)
        {
            FacultyCard facultyCard = new FacultyCard(faculty.Id, faculty.DisplayName, new DateTime(2015, 12, 31), 100, "test");

            return facultyCard;
        }

        /// <summary>
        /// Find Faculty By Faculty Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Faculty || null</returns>
        public Faculty FindFacultyByFacultyId(Guid id)
        {
            Faculty faculty = DataProvider.Instance.Database.Faculties.Where(facultyItem => facultyItem.Id == id).FirstOrDefault();

            return faculty;
        }

        /// <summary>
        /// Save Faculty To Database
        /// </summary>
        /// <param name="faculty"></param>
        public void SaveFacultyToDatabase(Faculty faculty)
        {
            Faculty savedFaculty = FindFacultyByFacultyId(faculty.Id);

            if (savedFaculty == null)
            {
                DataProvider.Instance.Database.Faculties.Add(faculty);
            }
            else
            {
                //savedFaculty = (faculty.ShallowCopy() as Faculty);
                savedFaculty.DisplayName = faculty.DisplayName;
            }
            DataProvider.Instance.Database.SaveChanges();
        }

        /// <summary>
        /// Save Faculty Card To Database
        /// </summary>
        /// <param name="facultyCard"></param>
        public void SaveFacultyCardToDatabase(FacultyCard facultyCard)
        {
            Faculty faculty = ConvertFacultyCardToFaculty(facultyCard);

            SaveFacultyToDatabase(faculty);
        }
    }
}
