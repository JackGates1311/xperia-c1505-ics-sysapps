.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z

.field private notFound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->notFound:Z

    .line 36
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 42
    const v3, 0x7f0900df

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, "scanning":Landroid/widget/TextView;
    const v3, 0x7f0900e0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "progressBar":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0700f3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_6

    :cond_0
    move v0, v6

    .line 48
    .local v0, "noDeviceFound":Z
    :goto_1
    if-eqz v0, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_8

    .line 52
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_3

    .line 53
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 56
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_4

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->notFound:Z

    .line 72
    :cond_4
    :goto_3
    return-void

    .line 45
    .end local v0    # "noDeviceFound":Z
    :cond_5
    const v3, 0x7f0700f4

    goto :goto_0

    :cond_6
    move v0, v5

    .line 46
    goto :goto_1

    .restart local v0    # "noDeviceFound":Z
    :cond_7
    move v3, v5

    .line 48
    goto :goto_2

    .line 58
    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_4

    .line 59
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_a

    .line 60
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 61
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v4, 0x7f040052

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 62
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->notFound:Z

    if-eqz v3, :cond_9

    .line 63
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v4, 0x7f0700f5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 64
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->notFound:Z

    .line 66
    :cond_9
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 68
    :cond_a
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    iput-boolean v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 78
    return-void
.end method
