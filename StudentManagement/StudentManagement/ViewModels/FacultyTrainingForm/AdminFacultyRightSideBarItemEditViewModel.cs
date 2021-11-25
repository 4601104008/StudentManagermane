﻿using StudentManagement.Commands;
using StudentManagement.Objects;
using StudentManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using static StudentManagement.ViewModels.AdminFacultyTrainingFormViewModel;

namespace StudentManagement.ViewModels
{
    class AdminFacultyRightSideBarItemEditViewModel : BaseViewModel
    {
        // currentCard just for binding to view, actualcard is real card
        public FacultyCard CurrentCard
        {
            get { return _currentCard; }
            set
            {
                _currentCard = value;
                OnPropertyChanged();
            }
        }

        private FacultyCard _currentCard;

        //store card info before edit
        private FacultyCard _actualCard;
        public FacultyCard ActualCard { get => _actualCard; set => _actualCard = value; }

        public AdminFacultyRightSideBarItemEditViewModel()
        {
            CurrentCard = null;
        }

        public AdminFacultyRightSideBarItemEditViewModel(FacultyCard card)
        {
            CurrentCard = new FacultyCard();
            ActualCard = card;
            CurrentCard.CopyCardInfo(card);
            InitCommand();
        }

        public ICommand ConfirmEditFacultyCardInfo { get => _confirmEditFacultyCardInfo; set => _confirmEditFacultyCardInfo = value; }

        private ICommand _confirmEditFacultyCardInfo;

        public ICommand CancelEditFacultyCardInfo { get => _cancelEditFacultyCardInfo; set => _cancelEditFacultyCardInfo = value; }

        private ICommand _cancelEditFacultyCardInfo;

        public void InitCommand()
        {
            CancelEditFacultyCardInfo = new RelayCommand<object>((p) => { return true; }, (p) => CancelEditFacultyCardInfoFunction());
            ConfirmEditFacultyCardInfo = new RelayCommand<object>((p) => { return true; }, (p) => ConfirmEditFacultyCardInfoFunction());
        }

        public void CancelEditFacultyCardInfoFunction()
        {
            CurrentCard.CopyCardInfo(ActualCard);
            ReturnToShowFacultyCardInfo();
        }

        public void ConfirmEditFacultyCardInfoFunction()
        {
            bool isCardExist = AdminFacultyTrainingFormViewModel.StoredFacultyCards.Contains(ActualCard);
            ActualCard.CopyCardInfo(CurrentCard);

            // check if card exist -> Not exist insert new
            if (!isCardExist)
            {
                AdminFacultyTrainingFormViewModel.StoredFacultyCards.Insert(0, ActualCard);
                AdminFacultyTrainingFormViewModel.FacultyCards.Insert(0, ActualCard);
            }

            FacultyServices.Instance.SaveFacultyCardToDatabase(ActualCard);

            ActualCard.RunOnPropertyChanged();
            ReturnToShowFacultyCardInfo();
        }

        public void ReturnToShowFacultyCardInfo()
        {
            AdminFacultyTrainingFormRightSideBarViewModel adminFacultyTrainingFormRightSideBarViewModel = AdminFacultyTrainingFormRightSideBarViewModel.Instance;
            adminFacultyTrainingFormRightSideBarViewModel.RightSideBarItemViewModel = new AdminFacultyRightSideBarItemViewModel(ActualCard);
        }
    }
}
