.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OOo;->OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OOo;->OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0OO(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z

    move-result p0

    return p0
.end method
