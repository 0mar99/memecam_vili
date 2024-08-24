.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$7;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->onResultCombineFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$7;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$7;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->quitLiveRecordPreview(Z)V

    return-void
.end method
