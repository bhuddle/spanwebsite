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
                IHPNotElligible.Visible = false;
                IHPNoChange.Visible = false;
            }
        }

        protected void DropDownList1_SelectedChanged(object sender, EventArgs e)
        {
            IHP.Visible = false;
            IHPEligible.Visible = false;
            IHPStillEligible.Visible = false;
            IHPNotElligible.Visible = false;
            IHPNoChange.Visible = false;
            switch (DropDownList1.SelectedValue)
            {
                case "1":
                    IHP.Visible = true;
                    RadioButtonList1.SelectedIndex = -1;
                    RadioButtonList2.SelectedIndex = -1;
                    break;
                case "2":
                    //IHP.Visible = true;
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
                IHPNoChange.Visible = false;
                RadioButtonList2.SelectedIndex = -1;
            }
            if (RadioButtonList1.SelectedValue == "2")
            {
                IHPNoChange.Visible = true;
                IHPEligible.Visible = false;
                IHPStillEligible.Visible = false;
                IHPNotElligible.Visible = false;
                RadioButtonList2.SelectedIndex = -1;
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //IHPEligible.Visible = true;
            //IHPStillEligible.Visible = false;
            if (RadioButtonList2.SelectedValue == "1")
            {
                IHPStillEligible.Visible = true;
                IHPNotElligible.Visible = false;
            }
            if (RadioButtonList2.SelectedValue == "2")
            {
                IHPNotElligible.Visible = true;
                IHPStillEligible.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedValue = "";
            RadioButtonList1.SelectedIndex = -1;
            RadioButtonList2.SelectedIndex = -1;
            Page_Load(sender, e);
        }
    }
}