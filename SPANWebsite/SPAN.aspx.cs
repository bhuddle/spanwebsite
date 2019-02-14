using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace SPANWebsite
{
    public partial class SPAN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                IHP.Visible = false;
                IHPEligible.Visible = false;
                IHPStillEligible.Visible = false;
            }
        }

        protected void DropDownList1_SelectedChanged(object sender, EventArgs e)
        {
            Debug.WriteLine("fartknocker: " + DropDownList1.SelectedValue);
            IHP.Visible = false;
            IHPEligible.Visible = false;
            IHPStillEligible.Visible = false;
            switch (DropDownList1.SelectedValue)
            {
                case "1":
                    IHP.Visible = true;
                    break;
                case "2":
                    IHP.Visible = true;
                    break;

            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //IHPEligible.Visible = false;
            Debug.WriteLine("radio button 1 value: "+RadioButtonList1.SelectedValue);
            if (RadioButtonList1.SelectedValue == "1")
            {
                IHPEligible.Visible = true;
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //IHPEligible.Visible = true;
            //IHPStillEligible.Visible = false;
            if (RadioButtonList2.SelectedValue == "1")
            {
                IHPStillEligible.Visible = true;
            }
        }
    }
}