.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO00o;->OooO00o:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO00o;->OooO00o:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->OooO00o(Landroid/content/SharedPreferences;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
