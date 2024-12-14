﻿using HospitalDocumentation.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace HospitalDocumentation.View
{
    public partial class RecipeWindow : Window
    {
        public RecipeWindow(RecipeViewModel viewModel)
        {
            InitializeComponent();
            DataContext = viewModel;
            Owner = Application.Current.MainWindow;
        }
    }
}
