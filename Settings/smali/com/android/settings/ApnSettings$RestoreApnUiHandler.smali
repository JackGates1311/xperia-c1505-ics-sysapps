.class Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ApnSettings;
    .param p2, "x1"    # Lcom/android/settings/ApnSettings$1;

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 507
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    .line 508
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 509
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$102(Z)Z

    .line 510
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->dismissDialog(I)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
