.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/graphics/Rect;

.field private final synthetic OooO0O0:F

.field private final synthetic OooO0OO:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;FLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;->OooO00o:Landroid/graphics/Rect;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;->OooO0O0:F

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;->OooO0OO:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;->OooO00o:Landroid/graphics/Rect;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;->OooO0O0:F

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;->OooO0OO:Ljava/util/List;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(Landroid/graphics/Rect;FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
