.class Lcom/android/settings/BrightnessPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/BrightnessPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field automatic:Z

.field oldAutomatic:Z

.field oldProgress:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/BrightnessPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/BrightnessPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    .line 286
    return-void

    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    :cond_1
    move v1, v2

    .line 284
    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 299
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 291
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    return-void

    :cond_0
    move v0, v2

    .line 291
    goto :goto_0

    :cond_1
    move v1, v2

    .line 293
    goto :goto_1
.end method
