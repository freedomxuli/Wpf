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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;
using System.Collections.ObjectModel;

namespace WpfApplication1
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        Company mCompany;

        public MainWindow()
        {
            InitializeComponent();
            mCompany = new Company { Name = "Microsoft" };
            GridPanel.DataContext = mCompany;

            ObservableCollection<Member> memberData = new ObservableCollection<Member>();
            memberData.Add(new Member()
            {
                Name = "Joe",
                Age = "23",
                Sex = SexOpt.男,
                Pass = true,
                Email = new Uri("mailto:Joe@school.com")
            });
            memberData.Add(new Member()
            {
                Name = "Mike",
                Age = "20",
                Sex = SexOpt.男,
                Pass = false,
                Email = new Uri("mailto:Mike@school.com")
            });
            memberData.Add(new Member()
            {
                Name = "Lucy",
                Age = "25",
                Sex = SexOpt.女,
                Pass = true,
                Email = new Uri("mailto:Lucy@school.com")
            });

            dataByshow.DataContext = memberData;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(mCompany.Name);
            mCompany.Name = "Sun";
        }

        private void datagrid_MouseDoubleClick(object sender, RoutedEventArgs e)
        { 
            
        }
    }

    public class Company : INotifyPropertyChanged
    {
        private string name; 
	    public event PropertyChangedEventHandler PropertyChanged;
	    public string Name 
	    { 
	        get { return name; } 
	        set { 
	            name = value; 
	            if (this.PropertyChanged != null) 
	            {
                    this.PropertyChanged.Invoke(this, new PropertyChangedEventArgs("Name"));
	            } 
	        } 
	    } 
    }

    public enum SexOpt { 男, 女 };

    public class Member
    {
        public string Name { get; set; }
        public string Age { get; set; }
        public SexOpt Sex { get; set; }
        public bool Pass { get; set; }
        public Uri Email { get; set; }
    }
}
