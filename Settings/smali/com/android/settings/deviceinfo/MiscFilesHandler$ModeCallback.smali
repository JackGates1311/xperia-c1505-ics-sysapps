.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataCount:I

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 82
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 152
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 153
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 154
    const/4 v4, 0x0

    .line 165
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "success":Z
    :goto_1
    return v4

    .line 151
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "success":Z
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "MTD.ASD.MiscFilesHandler"

    const-string v5, "Null pointer exception of children in deleteDir()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_1

    .line 165
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 96
    .local v10, "lv":Landroid/widget/ListView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return v2

    .line 99
    :pswitch_0
    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 100
    .local v7, "checkedItems":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v6

    .line 101
    .local v6, "checkedCount":I
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-le v6, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checked item counts do not match. checkedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-lez v0, :cond_5

    .line 106
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v11, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v9, v0, :cond_4

    .line 108
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 112
    :cond_1
    sget-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    .line 122
    :goto_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 124
    .end local v8    # "file":Ljava/io/File;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->removeAll(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 128
    .end local v9    # "i":I
    .end local v11    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 133
    .end local v6    # "checkedCount":I
    .end local v7    # "checkedItems":Landroid/util/SparseBooleanArray;
    :pswitch_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v9, v0, :cond_6

    .line 134
    invoke-virtual {v10, v9, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 133
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 137
    :cond_6
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7f090203
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 170
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 174
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 175
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    .line 176
    .local v3, "numChecked":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 180
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    const-wide/16 v4, 0x0

    .line 181
    .local v4, "selectedDataSize":J
    if-lez v3, :cond_1

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v1, v6, :cond_1

    .line 183
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v10}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
