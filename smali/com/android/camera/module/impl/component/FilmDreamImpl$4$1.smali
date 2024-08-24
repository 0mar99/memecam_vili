.class public Lcom/android/camera/module/impl/component/FilmDreamImpl$4$1;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl$4;->OnReceiveFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$4;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4$1;->this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4$1;->this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$4;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$500(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/data/observeable/FilmDreamProcessing;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void
.end method
