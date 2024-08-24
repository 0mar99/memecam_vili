.class public Lcom/android/camera/effect/renders/SnapshotRenderManager$Singleton;
.super Ljava/lang/Object;
.source "SnapshotRenderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotRenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/effect/renders/SnapshotRenderManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/effect/renders/SnapshotRenderManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRenderManager;-><init>(Lcom/android/camera/effect/renders/SnapshotRenderManager$1;)V

    sput-object v0, Lcom/android/camera/effect/renders/SnapshotRenderManager$Singleton;->INSTANCE:Lcom/android/camera/effect/renders/SnapshotRenderManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
