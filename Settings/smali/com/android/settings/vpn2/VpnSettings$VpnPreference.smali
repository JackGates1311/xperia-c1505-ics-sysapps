.class Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
.super Landroid/preference/Preference;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnPreference"
.end annotation


# instance fields
.field private mProfile:Lcom/android/settings/vpn2/VpnProfile;

.field private mState:I

.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "profile"    # Lcom/android/settings/vpn2/VpnProfile;

    .prologue
    const/4 v1, 0x0

    .line 492
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    .line 493
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 490
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    .line 494
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setPersistent(Z)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOrder(I)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 498
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update()V

    .line 500
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnSettings$VpnPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .prologue
    .line 488
    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    return v0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 532
    const/4 v1, -0x1

    .line 533
    .local v1, "result":I
    instance-of v2, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 534
    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 535
    .local v0, "another":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    iget v2, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    iget v3, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v2, v2, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v3, v3, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v2, v2, Lcom/android/settings/vpn2/VpnProfile;->type:I

    iget-object v3, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v3, v3, Lcom/android/settings/vpn2/VpnProfile;->type:I

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    .line 538
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v2, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v3, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 541
    .end local v0    # "another":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 488
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getProfile()Lcom/android/settings/vpn2/VpnProfile;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    return-object v0
.end method

.method update()V
    .locals 4

    .prologue
    .line 517
    iget v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    if-gez v2, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "types":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v2, v2, Lcom/android/settings/vpn2/VpnProfile;->type:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    .end local v1    # "types":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v2, v2, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->notifyHierarchyChanged()V

    .line 528
    return-void

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "states":[Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method update(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update()V

    .line 514
    return-void
.end method

.method update(Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/settings/vpn2/VpnProfile;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update()V

    .line 509
    return-void
.end method
