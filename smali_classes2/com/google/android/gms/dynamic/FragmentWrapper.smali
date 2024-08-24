.class public final Lcom/google/android/gms/dynamic/FragmentWrapper;
.super Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field public zza:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    return-void
.end method

.method public static wrap(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/FragmentWrapper;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/google/android/gms/dynamic/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zzA()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final zzb()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result p0

    return p0
.end method

.method public final zzc()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result p0

    return p0
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/FragmentWrapper;->wrap(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/FragmentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/FragmentWrapper;->wrap(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/FragmentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final zzl(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final zzm(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final zzo(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public final zzp(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final zzq(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final zzs()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getRetainInstance()Z

    move-result p0

    return p0
.end method

.method public final zzt()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result p0

    return p0
.end method

.method public final zzu()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public final zzv()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result p0

    return p0
.end method

.method public final zzw()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result p0

    return p0
.end method

.method public final zzx()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isInLayout()Z

    move-result p0

    return p0
.end method

.method public final zzy()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result p0

    return p0
.end method

.method public final zzz()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zza:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result p0

    return p0
.end method
