.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 543
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 544
    .local v0, "on":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 534
    const v0, 0x7f090186

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 537
    if-eqz p1, :cond_0

    const v0, 0x7f020039

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020038

    goto :goto_0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 535
    const v0, 0x7f090187

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 550
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 554
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 556
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 558
    .local v1, "sync":Z
    new-instance v2, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 584
    return-void
.end method
