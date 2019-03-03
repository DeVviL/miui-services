.class public Lcom/android/server/am/MiuiUserSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "MiuiUserSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 25
    const v0, 0x110c000b

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 31
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v7, 0x101005d

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    sget v6, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 37
    .local v4, "view":Landroid/view/View;
    sget v5, Lmiui/R$id;->message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 38
    .local v2, "mMessageView":Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 39
    .local v3, "mProgress":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/android/server/am/MiuiUserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x110700d7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public bridge synthetic show()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->show()V

    return-void
.end method
