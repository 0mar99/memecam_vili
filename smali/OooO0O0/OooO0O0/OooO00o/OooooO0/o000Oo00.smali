.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/graphics/Bitmap;

.field private final synthetic OooO0O0:Landroid/graphics/Rect;

.field private final synthetic OooO0OO:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;->OooO00o:Landroid/graphics/Bitmap;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;->OooO0O0:Landroid/graphics/Rect;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;->OooO0OO:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;->OooO00o:Landroid/graphics/Bitmap;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;->OooO0O0:Landroid/graphics/Rect;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Oo00;->OooO0OO:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/WideSelfieModule;->OooO00o(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
