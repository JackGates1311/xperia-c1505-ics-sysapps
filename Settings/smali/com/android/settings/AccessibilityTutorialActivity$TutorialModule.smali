.class abstract Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;
.super Landroid/widget/FrameLayout;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TutorialModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;
    }
.end annotation


# instance fields
.field private final mBack:Landroid/widget/Button;

.field private final mController:Lcom/android/settings/AccessibilityTutorialActivity;

.field private final mFinish:Landroid/widget/Button;

.field private mFlags:J

.field private mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

.field private final mInstructions:Landroid/widget/TextView;

.field private mIsVisible:Z

.field private final mNext:Landroid/widget/Button;

.field private final mSkip:Landroid/widget/Button;

.field private final mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/settings/AccessibilityTutorialActivity;
    .param p3, "layoutResId"    # I
    .param p4, "titleResId"    # I

    .prologue
    const/4 v5, 0x1

    .line 538
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 526
    new-instance v3, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;-><init>(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;Lcom/android/settings/AccessibilityTutorialActivity$1;)V

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    .line 540
    iput-object p2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    .line 541
    iput p4, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mTitleResId:I

    .line 543
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 546
    .local v0, "container":Landroid/view/View;
    const v3, 0x7f090006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    .line 547
    const v3, 0x7f090007

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    .line 548
    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    .line 550
    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    const v3, 0x7f090009

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    .line 552
    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    .line 554
    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    const v3, 0x7f09000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 558
    .local v2, "title":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 559
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 562
    :cond_0
    const v3, 0x7f090005

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 563
    .local v1, "contentHolder":Landroid/view/ViewGroup;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 564
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->addInstructionSync(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addInstructionSync(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 599
    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    .line 573
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    iget v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mTitleResId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity;->setTitle(I)V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->onShown()V

    .line 577
    return-void
.end method

.method protected varargs addInstruction(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 587
    iget-boolean v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    if-nez v1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;->addInstruction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    .line 607
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->access$700(Lcom/android/settings/AccessibilityTutorialActivity;)V

    .line 608
    return-void
.end method

.method protected hasFlag(I)Z
    .locals 4
    .param p1, "flagId"    # I

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->finish()V

    goto :goto_0

    .line 627
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->access$800(Lcom/android/settings/AccessibilityTutorialActivity;)V

    goto :goto_0

    .line 630
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->access$900(Lcom/android/settings/AccessibilityTutorialActivity;)V

    goto :goto_0

    .line 633
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->finish()V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onShown()V
.end method

.method protected setBackVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 661
    return-void

    .line 660
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setFinishVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 669
    return-void

    .line 668
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setFlag(IZ)V
    .locals 6
    .param p1, "flagId"    # I
    .param p2, "value"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 648
    if-eqz p2, :cond_0

    .line 649
    iget-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    xor-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    goto :goto_0
.end method

.method protected setNextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 665
    return-void

    .line 664
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setSkipVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 657
    return-void

    .line 656
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
