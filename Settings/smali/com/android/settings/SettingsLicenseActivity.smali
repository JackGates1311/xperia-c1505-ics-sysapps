.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 126
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 127
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 216
    const v0, 0x7f0703e5

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 219
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 187
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0703e4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 193
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/SettingsLicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsLicenseActivity$2;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/settings/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsLicenseActivity$3;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 210
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 211
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v5, "ro.config.license_path"

    const-string v6, "/system/etc/NOTICE.html.gz"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    const-string v5, "SettingsLicenseActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 172
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLicenseActivity;->setVisible(Z)V

    .line 145
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 147
    new-instance v5, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    iput-object v5, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 162
    const v5, 0x7f0703e4

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 163
    .local v4, "title":Ljava/lang/CharSequence;
    const v5, 0x7f0703e6

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 165
    .local v1, "msg":Ljava/lang/CharSequence;
    const/4 v5, 0x1

    invoke-static {p0, v4, v1, v5, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 166
    .local v2, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 167
    iput-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 170
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v6, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v0, v6}, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 182
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method
