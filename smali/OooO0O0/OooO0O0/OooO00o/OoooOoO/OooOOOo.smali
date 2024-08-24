.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentAIWatermark;

.field private final synthetic OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;->OooO00o:Lcom/android/camera/fragment/FragmentAIWatermark;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;->OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;->OooO00o:Lcom/android/camera/fragment/FragmentAIWatermark;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;->OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOOo;->OooO0OO:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/fragment/FragmentAIWatermark;->OooO00o(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    return-void
.end method
