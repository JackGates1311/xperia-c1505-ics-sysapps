.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1705
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "networkResId"    # I

    .prologue
    .line 1745
    const v0, 0x7f07063b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 10
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1742
    :goto_0
    return-void

    .line 1712
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1717
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "currentTab":Ljava/lang/String;
    const-string v7, "3g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1719
    const v7, 0x7f070628

    invoke-static {v6, v7}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1720
    .local v5, "message":Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .line 1734
    .local v3, "limitBytes":J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1735
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "message"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1736
    const-string v7, "limitBytes"

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1738
    new-instance v2, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1739
    .local v2, "dialog":Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1740
    const/4 v7, 0x0

    invoke-virtual {v2, p0, v7}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1741
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "confirmLimit"

    invoke-virtual {v2, v7, v8}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1721
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_1
    const-string v7, "4g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1722
    const v7, 0x7f070627

    invoke-static {v6, v7}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1723
    .restart local v5    # "message":Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3    # "limitBytes":J
    goto :goto_1

    .line 1724
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_2
    const-string v7, "mobile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1725
    const v7, 0x7f070629

    invoke-static {v6, v7}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1726
    .restart local v5    # "message":Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3    # "limitBytes":J
    goto :goto_1

    .line 1727
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "wifi"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1728
    const v7, 0x7f070624

    invoke-static {v6, v7}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1729
    .restart local v5    # "message":Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3    # "limitBytes":J
    goto :goto_1

    .line 1731
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown current tab: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1752
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1753
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1755
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1756
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f07063a

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1757
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1759
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1768
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
