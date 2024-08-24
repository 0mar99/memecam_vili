.class public Lcom/android/camera/effect/renders/SnapshotRenderManager;
.super Ljava/lang/Object;
.source "SnapshotRenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotRenderManager$Singleton;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SnapRenderManager"

.field public static snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;


# instance fields
.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/effect/renders/SnapshotRenderManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRenderManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/effect/renders/SnapshotRenderManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager$Singleton;->INSTANCE:Lcom/android/camera/effect/renders/SnapshotRenderManager;

    return-object v0
.end method


# virtual methods
.method public getSnapshotRender()Lcom/android/camera/effect/renders/SnapshotRender;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;

    if-nez v0, :cond_0

    const-string v0, "SnapRenderManager"

    const-string v1, "init snapshotRender"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-direct {v0}, Lcom/android/camera/effect/renders/SnapshotRender;-><init>()V

    sput-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;

    .line 5
    :cond_0
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSnapshotRender()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;

    if-eqz v0, :cond_0

    const-string v0, "SnapRenderManager"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseSnapshotRender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->release()V

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;->snapshotRender:Lcom/android/camera/effect/renders/SnapshotRender;

    goto :goto_0

    :cond_0
    const-string v0, "SnapRenderManager"

    const-string/jumbo v1, "releaseSnapshotRender: render is null"

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
