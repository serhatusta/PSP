<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterUser.Master" AutoEventWireup="true" CodeBehind="ToolGuideline.aspx.cs" Inherits="PSP.Page.Info.ToolGuideline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3>Tool Guideline</h3>
        <br />
        <br />
        <p>
        1.Time Recording log 
        PSP tool consist of 6 levels. These levels must be used all projects. Time log 
        phase show that projects save time each of levels. Total of time which save each 
        of levels calculate requring period for whole project. (Levels : Plan, Design, 
        Code, Compile, Unit Test, Post Mortem)  
    </p>
    <p>
        2.Defect Recording Log 
        This form show that form provide to see defects and errors during developing of 
        experiment or project. Also defect are saved to this form. Thus level which meet 
        errors is found. How and which levels to fix these errors and which time to them. 
        Defects type is saved and form provide to create historical data to defects.
    </p>
    <p>
         3.PIP (Process Improvement Proposal) Form
        This form help to understand the experiment. Form has problem description, proposal 
        description and other notes and comments. Form show informations of experiment.
    </p>
    <p>
        4.Size Estimating Template 
        This form is used third experiment. Because this form use old calculated information. 
        At the first and second experiment base, added and modified, reused, new reusable, 
        total code are calculated and saved. Size estimating template is created these 
        information. As a result of this template calculated lines of code to experiment 
        Thus users determine in their positions of personal software process.
    </p>
    <p>
        5.Test Reports
        This form includes whole process of test. Form has information of test number, 
        test name, objective, conditions, expected and actual results. There can be more 
        than one test report.
    </p>
    <p>
        6.Task and Schedule Planning Template
        This form show planned and actual process of experiment. This process has 6 levels 
        again. Each of level finish how much hours and calculated their values with some 
        constant. After prepare this form determine success of process.
    </p>
    <p>
        7.Review Templates
        <br />
        7.1.Code Review Template
        Code Review : Your reviews will be most effective when your personal checklist is 
        customized to your own defect experience.
        Use your own data to select the checklist items.
        Gather and analyze data on the reviews.
        Adjust the checklist with experience.
        The checklist defines the review steps and the suggested order for performing them.
        Review for one checklist item at a time.
        Check off each item as you complete it.
        <br />
        7.2.Design Review Template
        Design Review : Produce designs that can be reviewed in stages.The suggested review 
        stages are as follows.
        <br />
        1.Review against the requirements to ensure that each required function is addressed 
        by the design.
        <br />
        2.Verify the overall program structure and flow.
        <br />
        3.Check the logical constructs for correctness.
        <br />
        4.Check for robustness, safety, and security.
        <br />
        5.Check the function, method, and procedure calls to ensure proper use.
        <br />
        6.Check special variables, parameters, types, and files for proper use.
    </p>
    <p>
         8.Design Templates
        Four design templates are used in the PSP to cover the four design views. 
        operational specification template 
        functional specification template
        state specification template 
        logic specification template
        These four templates provide the framework for completely and precisely recording 
        a software design.
        <br />
        8.1.Operational Template
        The operational specification template describes the users’ normal and abnormal 
        interactions with he system. It contains the principal user actions and system 
        responses anticipated error and recovery conditions The perational specification 
        template can be used to define test scenarios and test cases resolve development 
        questions about operational issues resolve requirements discussions with users 
        <br />
        8.2.Functional Specification Template
        The functional specification template allows you to unambiguously define the external 
        functions provided by the product. classes and inheritance externally visible 
        attributes external functions provided relationships with other classes or parts 
        Where possible, specify the behavior of each function or method with a formal notation.
        <br />
        8.3.Logic Specification Template
        The logic specification template precisely defines the program’s internal logic. 
        Its objective is to describe the logic in a concise and convenient notation. A 
        pseudo code compatible with the implementation language is often appropriate. 
        Formal notation is also appropriate. Both the designers and the implementers must 
        be familiar with the notation used. The logic specification template should 
        specify the logic for each item or method, each part and class, and the overall 
        program the precise call to each program, part, or method any external references 
        special data types and data definitions. 
        <br />
        8.4.State Specification Template(SST) 
        The state specification template (SST) precisely defines the program states required 
        transitions among the states actions taken with each transition With the SST, you 
        can define state machine structure analyze the state machine design recognize mistakes 
        and omissions The SST specifies the name of every state a brief description of each 
        state the name and description of any functions or parameters used in the SST the 
        conditions that cause transitions from the state to itself or to any other state the 
        conditions that cause transitions from any other state to this state the actions taken 
        during each transition.
    </p>
    <br />
    <br />
    </div>
</asp:Content>
