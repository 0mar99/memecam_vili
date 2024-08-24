.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ThumbnailUpdater;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ThumbnailUpdater;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO00o:Lcom/android/camera/ThumbnailUpdater;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO0O0:Z

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO0OO:I

    iput-boolean p4, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO00o:Lcom/android/camera/ThumbnailUpdater;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO0O0:Z

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO0OO:I

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0;->OooO0Oo:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ThumbnailUpdater;->OooO00o(ZIZ)V

    return-void
.end method
