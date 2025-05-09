.class public Lcom/android/settings/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 647
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 648
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 655
    const-wide/32 v12, 0x3e800000

    cmp-long v12, p3, v12

    if-gez v12, :cond_0

    .line 656
    const v12, 0x104092b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 657
    .local v8, "unit":Ljava/lang/CharSequence;
    const-wide/32 v10, 0x100000

    .line 663
    .local v10, "unitFactor":J
    :goto_0
    move-wide/from16 v0, p3

    long-to-double v12, v0

    long-to-double v14, v10

    div-double v2, v12, v14

    .line 667
    .local v2, "result":D
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_1

    .line 668
    const-string v12, "%.1f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, "size":Ljava/lang/CharSequence;
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    mul-long/2addr v12, v10

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    long-to-double v4, v12

    .line 675
    .local v4, "resultRounded":D
    :goto_1
    sget-object v12, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    const-string v13, "^1"

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v7

    .line 676
    .local v7, "sizeBounds":[I
    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 677
    sget-object v12, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    const-string v13, "^2"

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v9

    .line 678
    .local v9, "unitBounds":[I
    const/4 v12, 0x0

    aget v12, v9, v12

    const/4 v13, 0x1

    aget v13, v9, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 680
    double-to-long v12, v4

    return-wide v12

    .line 659
    .end local v2    # "result":D
    .end local v4    # "resultRounded":D
    .end local v6    # "size":Ljava/lang/CharSequence;
    .end local v7    # "sizeBounds":[I
    .end local v8    # "unit":Ljava/lang/CharSequence;
    .end local v9    # "unitBounds":[I
    .end local v10    # "unitFactor":J
    :cond_0
    const v12, 0x104092c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 660
    .restart local v8    # "unit":Ljava/lang/CharSequence;
    const-wide/32 v10, 0x40000000

    .restart local v10    # "unitFactor":J
    goto :goto_0

    .line 671
    .restart local v2    # "result":D
    :cond_1
    const-string v12, "%.0f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 672
    .restart local v6    # "size":Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    mul-long/2addr v12, v10

    long-to-double v4, v12

    .restart local v4    # "resultRounded":D
    goto :goto_1
.end method

.method public convertToPoint(J)F
    .locals 10
    .param p1, "value"    # J

    .prologue
    .line 633
    long-to-double v4, p1

    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-double v6, v6

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v8, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 634
    .local v2, "normalized":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide v6, 0x3fd79b217a704c38L    # 0.3688434310617512

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, -0x4059d6f1420f71c4L    # -0.043281994520182526

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 636
    .local v0, "fraction":D
    iget v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-float v4, v4

    return v4
.end method

.method public convertToValue(F)J
    .locals 10
    .param p1, "point"    # F

    .prologue
    .line 641
    iget v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float v4, p1, v4

    float-to-double v2, v4

    .line 642
    .local v2, "normalized":D
    const-wide v4, 0x3ff4f6ac3b8f3c62L    # 1.3102228476089057

    const-wide v6, 0x4005b07dd022ee16L    # 2.711177469316463

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v0, v4, v6

    .line 644
    .local v0, "fraction":D
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v8, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    double-to-long v4, v4

    return-wide v4
.end method

.method public getTickPoints()[F
    .locals 13

    .prologue
    .line 685
    iget-wide v9, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v11, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v1, v9, v11

    .line 687
    .local v1, "range":J
    const-wide v9, 0xc0000000L

    cmp-long v9, v1, v9

    if-gez v9, :cond_0

    .line 688
    const-wide/32 v4, 0x10000000

    .line 694
    .local v4, "tickJump":J
    :goto_0
    div-long v9, v1, v4

    long-to-int v3, v9

    .line 695
    .local v3, "tickCount":I
    new-array v6, v3, [F

    .line 696
    .local v6, "tickPoints":[F
    iget-wide v7, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 697
    .local v7, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v9, v6

    if-ge v0, v9, :cond_1

    .line 698
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v9

    aput v9, v6, v0

    .line 699
    add-long/2addr v7, v4

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    .end local v0    # "i":I
    .end local v3    # "tickCount":I
    .end local v4    # "tickJump":J
    .end local v6    # "tickPoints":[F
    .end local v7    # "value":J
    :cond_0
    new-instance v9, Ljava/math/BigDecimal;

    const-wide/16 v10, 0xa

    div-long v10, v1, v10

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v10, Ljava/math/MathContext;

    const/4 v11, 0x1

    sget-object v12, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v10, v11, v12}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .restart local v4    # "tickJump":J
    goto :goto_0

    .line 702
    .restart local v0    # "i":I
    .restart local v3    # "tickCount":I
    .restart local v6    # "tickPoints":[F
    .restart local v7    # "value":J
    :cond_1
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 606
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 611
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 613
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 622
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 623
    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    .line 708
    .local v0, "point":F
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 709
    const/4 v1, -0x1

    .line 713
    :goto_0
    return v1

    .line 710
    :cond_0
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3feb333333333333L    # 0.85

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 711
    const/4 v1, 0x1

    goto :goto_0

    .line 713
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
