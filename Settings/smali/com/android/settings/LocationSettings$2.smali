.class Lcom/android/settings/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/LocationSettings$2;->this$0:Lcom/android/settings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/LocationSettings$2;->this$0:Lcom/android/settings/LocationSettings;

    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$100(Lcom/android/settings/LocationSettings;)V

    .line 158
    return-void
.end method
