.class public final Lcom/android/settings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 120
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 522
    new-instance v0, Lcom/android/settings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$2;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 534
    new-instance v0, Lcom/android/settings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$3;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 549
    new-instance v0, Lcom/android/settings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$4;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 563
    new-instance v0, Lcom/android/settings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$5;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/DockService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/DockService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    .line 761
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 826
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 767
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, "arr$":[Z
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-boolean v4, v0, v6

    .line 768
    .local v4, "enable":Z
    if-eqz v4, :cond_3

    .line 769
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 775
    .local v1, "btState":I
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 778
    const/16 v10, 0xc

    if-eq v1, v10, :cond_3

    .line 779
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 783
    :cond_2
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 784
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    .line 785
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 761
    .end local v0    # "arr$":[Z
    .end local v1    # "btState":I
    .end local v4    # "enable":Z
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 767
    .restart local v0    # "arr$":[Z
    .restart local v4    # "enable":Z
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 794
    .end local v4    # "enable":Z
    :cond_4
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 796
    const/4 v3, 0x0

    .line 797
    .local v3, "callConnect":Z
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 799
    .local v2, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 800
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 803
    .local v8, "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    .line 805
    const/4 v3, 0x1

    .line 814
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 799
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 806
    :cond_6
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_5

    .line 808
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 809
    .local v9, "status":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 811
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 822
    .end local v8    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v9    # "status":I
    :cond_7
    if-eqz v3, :cond_0

    .line 824
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 751
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 752
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 753
    .local v2, "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 754
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    .end local v2    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 749
    .end local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 463
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 466
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 469
    packed-switch p2, :pswitch_data_0

    .line 519
    :goto_0
    return-void

    .line 479
    :pswitch_0
    const/4 v3, 0x0

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 482
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v7, 0x1

    .line 484
    .local v7, "firstTime":Z
    :goto_1
    invoke-direct {p0, p1, p2, v7}, Lcom/android/settings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 486
    .local v9, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070232

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 490
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v9, v3, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 495
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    .line 496
    .local v10, "pixelScaleFactor":F
    const v3, 0x7f040063

    const/4 v5, 0x0

    invoke-virtual {v8, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f09011a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 500
    .local v11, "rememberCheckbox":Landroid/widget/CheckBox;
    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 501
    .local v6, "checked":Z
    :goto_2
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 502
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 503
    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v10

    float-to-int v2, v3

    .line 504
    .local v2, "viewSpacingLeft":I
    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v10

    float-to-int v4, v3

    .line 505
    .local v4, "viewSpacingRight":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 512
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    iput p3, p0, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 516
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d9

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 517
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 518
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 482
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewSpacingLeft":I
    .end local v4    # "viewSpacingRight":I
    .end local v6    # "checked":Z
    .end local v7    # "firstTime":Z
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "items":[Ljava/lang/CharSequence;
    .end local v10    # "pixelScaleFactor":F
    .end local v11    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 500
    .restart local v0    # "ab":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "view":Landroid/view/View;
    .restart local v7    # "firstTime":Z
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v9    # "items":[Ljava/lang/CharSequence;
    .restart local v10    # "pixelScaleFactor":F
    .restart local v11    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 854
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 857
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 176
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9
    .param p1, "startId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, -0x64

    .line 673
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    .line 674
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 678
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 684
    :cond_0
    iput-object v8, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 685
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 712
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v6, :cond_2

    .line 713
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 714
    iput v6, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 717
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 718
    :goto_1
    return-void

    .line 687
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 693
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 694
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 695
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 697
    .local v3, "state":I
    if-eqz v3, :cond_4

    .line 698
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 700
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 701
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 703
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 706
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/16 v3, -0x64

    .line 639
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 640
    .local v0, "btState":I
    monitor-enter p0

    .line 642
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 643
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 669
    :cond_0
    :goto_0
    monitor-exit p0

    .line 670
    return-void

    .line 644
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 649
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 650
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 651
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 656
    :try_start_1
    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    .line 657
    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 658
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 659
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 662
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 663
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 664
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 666
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 833
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :goto_0
    monitor-exit p0

    return-void

    .line 835
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 840
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 841
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 842
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 844
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 846
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 847
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 848
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 849
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    monitor-exit p0

    return-void

    .line 840
    .end local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 7
    .param p1, "disconnectedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .param p3, "startId"    # I

    .prologue
    .line 727
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 729
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 730
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 731
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 733
    .local v3, "state":I
    if-eqz v3, :cond_0

    .line 734
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 736
    .local v1, "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 739
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 745
    .end local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "state":I
    :cond_0
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    .line 727
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "firstTime"    # Z

    .prologue
    const v3, 0x7f070234

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 587
    packed-switch p2, :pswitch_data_0

    .line 597
    const/4 v0, 0x0

    .line 634
    :goto_0
    return-object v0

    .line 591
    :pswitch_0
    const/4 v1, 0x1

    .line 600
    .local v1, "numOfProfiles":I
    :goto_1
    new-array v2, v1, [Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 601
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .line 602
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 605
    .local v0, "items":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 624
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 625
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 626
    if-eqz p3, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 594
    .end local v0    # "items":[Ljava/lang/CharSequence;
    .end local v1    # "numOfProfiles":I
    :pswitch_2
    const/4 v1, 0x2

    .line 595
    .restart local v1    # "numOfProfiles":I
    goto :goto_1

    .line 607
    .restart local v0    # "items":[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f070233

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 608
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 609
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 610
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 611
    if-eqz p3, :cond_0

    .line 613
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 614
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 616
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 617
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 605
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4
    .param p1, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 306
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    const/4 v1, 0x0

    .line 317
    :goto_0
    return v1

    .line 312
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 374
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 380
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 385
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 400
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 391
    :cond_2
    move-object v0, p1

    .line 392
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Lcom/android/settings/bluetooth/DockService$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/settings/bluetooth/DockService$1;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 397
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 356
    :cond_0
    :goto_0
    return v2

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 327
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 426
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 427
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 434
    .local v2, "state":I
    if-nez v0, :cond_0

    .line 435
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-object v3

    .line 440
    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 442
    :pswitch_0
    const/16 v1, 0x14d

    .line 458
    .local v1, "msgType":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 448
    .end local v1    # "msgType":I
    :pswitch_1
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    const/16 v1, 0x6f

    .restart local v1    # "msgType":I
    goto :goto_1

    .line 451
    .end local v1    # "msgType":I
    :cond_1
    const/16 v1, 0xde

    .line 453
    .restart local v1    # "msgType":I
    goto :goto_1

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 256
    .local v2, "msgType":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 257
    .local v4, "state":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 258
    .local v3, "startId":I
    const/4 v1, 0x0

    .line 259
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 260
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 266
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    .line 268
    .local v0, "deferFinishCall":Z
    sparse-switch v2, :sswitch_data_0

    .line 294
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_1

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_1

    if-nez v0, :cond_1

    .line 298
    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    monitor-exit p0

    return-void

    .line 270
    :sswitch_0
    if-eqz v1, :cond_2

    .line 271
    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v0    # "deferFinishCall":Z
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "msgType":I
    .end local v3    # "startId":I
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 273
    .restart local v0    # "deferFinishCall":Z
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "msgType":I
    .restart local v3    # "startId":I
    .restart local v4    # "state":I
    :cond_2
    :try_start_2
    const-string v5, "DockService"

    const-string v6, "Error! mDevice is null, can\'t create dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :sswitch_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 279
    goto :goto_0

    .line 282
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/settings/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 283
    goto :goto_0

    .line 286
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 290
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "dock"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 405
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 406
    .local v1, "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 414
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 415
    .local v3, "deviceUI":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 416
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 419
    const/4 v5, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3    # "deviceUI":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 127
    .local v0, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 128
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 133
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 134
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 135
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 136
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 143
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 144
    new-instance v2, Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 162
    :cond_2
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 163
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 164
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 165
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 166
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    .line 167
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 861
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 864
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :cond_0
    monitor-exit p0

    return-void

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 183
    if-nez p1, :cond_1

    .line 189
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 239
    :cond_0
    :goto_0
    return v7

    .line 193
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 203
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 206
    .local v0, "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 207
    .local v3, "retryCount":I
    if-ge v3, v8, :cond_0

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 212
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 216
    .restart local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 217
    .restart local v3    # "retryCount":I
    if-ge v3, v8, :cond_0

    .line 218
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 224
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_5

    .line 228
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_6

    .line 233
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    :cond_6
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 237
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
