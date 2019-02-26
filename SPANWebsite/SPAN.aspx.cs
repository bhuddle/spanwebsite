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
                Set_False();
                Reset_Index(0);
            }
        }

        protected void Set_False()
        {
            //Set all variables visibility to false under drop down
            IHP.Visible = false;
            IHPEligible.Visible = false;
            IHPStillEligible.Visible = false;
            IHPNotElligible.Visible = false;
            IHPNoChange.Visible = false;
            CBCPace.Visible = false;
            CBCPaceElligible.Visible = false;
            CBCPaceNoChange.Visible = false;
            CBCPaceNotElligible.Visible = false;
            CBCPaceStillElligible.Visible = false;
            ICP.Visible = false;
            ICPElligible.Visible = false;
            ICPNoChange.Visible = false;
            ICPNotElligible.Visible = false;
            ICPStillElligible.Visible = false;
            CBC.Visible = false;
            CBCElligible.Visible = false;
            CBCNoChange.Visible = false;
            CBCNotElligible.Visible = false;
            CBCStillElligible.Visible = false;
        }

        protected void Reset_Index(int var)
        {
            //set all indexes back to default
            if (var == 0)
            {
                RadioButtonList1.SelectedIndex = -1;
                RadioButtonList2.SelectedIndex = -1;
                RadioButtonList3.SelectedIndex = -1;
                RadioButtonList4.SelectedIndex = -1;
                RadioButtonList5.SelectedIndex = -1;
                RadioButtonList6.SelectedIndex = -1;
                RadioButtonList7.SelectedIndex = -1;
                RadioButtonList8.SelectedIndex = -1;
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
                    CBCPace.Visible = true;
                    RadioButtonList3.SelectedIndex = -1;
                    RadioButtonList4.SelectedIndex = -1;
                    break;
                case "3":
                    ICP.Visible = true;
                    RadioButtonList5.SelectedIndex = -1;
                    RadioButtonList6.SelectedIndex = -1;
                    break;
                case "4":
                    CBC.Visible = true;
                    RadioButtonList7.SelectedIndex = -1;
                    RadioButtonList8.SelectedIndex = -1;
                    break;
                case "5":
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
            Page_Load(sender, e);
        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList3.SelectedValue == "1")
            {
                CBCPaceElligible.Visible = true;
                CBCPaceNoChange.Visible = false;
                RadioButtonList4.SelectedIndex = -1;
            }
            if (RadioButtonList3.SelectedValue == "2")
            {
                CBCPaceNoChange.Visible = true;
                CBCPaceElligible.Visible = false;
                CBCPaceNotElligible.Visible = false;
                CBCPaceStillElligible.Visible = false;
                RadioButtonList4.SelectedIndex = -1;
            }

        }

        protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            //handle cbc pace still elligible
            if (RadioButtonList4.SelectedValue == "1")
            {
                CBCPaceStillElligible.Visible = true;
                CBCPaceNotElligible.Visible = false;
            }
            if (RadioButtonList4.SelectedValue == "2")
            {
                CBCPaceNotElligible.Visible = true;
                CBCPaceStillElligible.Visible = false;
            }
        }

        protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList5.SelectedValue == "1")
            {
                ICPElligible.Visible = true;
                ICPNoChange.Visible = false;
                RadioButtonList6.SelectedIndex = -1;
            }
            if (RadioButtonList5.SelectedValue == "2")
            {
                ICPNoChange.Visible = true;
                ICPElligible.Visible = false;
                ICPNotElligible.Visible = false;
                ICPStillElligible.Visible = false;
                RadioButtonList6.SelectedIndex = -1;
            }
        }

        protected void RadioButtonList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList6.SelectedValue == "1")
            {
                ICPStillElligible.Visible = true;
                ICPNotElligible.Visible = false;
            }
            if (RadioButtonList6.SelectedValue == "2")
            {
                ICPNotElligible.Visible = true;
                ICPStillElligible.Visible = false;
            }
        }

        protected void RadioButtonList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            //CBC
            if (RadioButtonList7.SelectedValue == "1")
            {
                CBCElligible.Visible = true;
                CBCNoChange.Visible = false;
                RadioButtonList8.SelectedIndex = -1;
            }
            if (RadioButtonList7.SelectedValue == "2")
            {
                CBCNoChange.Visible = true;
                CBCElligible.Visible = false;
                CBCNotElligible.Visible = false;
                CBCStillElligible.Visible = false;
                RadioButtonList8.SelectedIndex = -1;
            }
        }

        protected void RadioButtonList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            //CBC
            if (RadioButtonList8.SelectedValue == "1")
            {
                CBCStillElligible.Visible = true;
                CBCNotElligible.Visible = false;
            }
            if (RadioButtonList8.SelectedValue == "2")
            {
                CBCNotElligible.Visible = true;
                CBCStillElligible.Visible = false;
            }
        }

        protected void RadioButtonList9_SelectedIndexChanged(object sender, EventArgs e)
        {
            //NFC
        }

        protected void RadioButtonList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            //NFC
        }
    }
}