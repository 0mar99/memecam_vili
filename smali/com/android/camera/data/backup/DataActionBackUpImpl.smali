.class public Lcom/android/camera/data/backup/DataActionBackUpImpl;
.super Ljava/lang/Object;
.source "DataActionBackUpImpl.java"

# interfaces
.implements Lcom/android/camera/data/backup/DataBackUp;


# instance fields
.field public mBackupArrays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/collection/SimpleArrayMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->cloneValues()Landroidx/collection/SimpleArrayMap;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public clearBackUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public getBackupRunning(I)Landroidx/collection/SimpleArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method public revertOrCreateRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    :goto_0
    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/DataItemBase;->restoreArrayMap(Landroidx/collection/SimpleArrayMap;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->setBackupKey(I)V

    return-void
.end method

.method public startBackup(Lcom/android/camera/data/provider/DataProvider$ProviderEvent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">(TP;I)V"
        }
    .end annotation

    return-void
.end method

.method public toggleKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-virtual {v1, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
