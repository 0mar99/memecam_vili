.class public final LOooO0O0/OooO0O0/OooO0OO/OooO0o0;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# static fields
.field public static final OooO00o:Ljava/lang/String; = "sans-serif"

.field public static final OooO0O0:Ljava/lang/String; = "sans-serif-medium"

.field public static final OooO0OO:Ljava/lang/String; = "sans-serif-light"

.field public static final OooO0Oo:Ljava/lang/String; = "mipro"

.field public static final OooO0o:Ljava/lang/String; = "mipro-regular"

.field public static final OooO0o0:Ljava/lang/String; = "mipro-medium"

.field public static final OooO0oO:Ljava/lang/String; = "mipro-light"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public static OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public static OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
