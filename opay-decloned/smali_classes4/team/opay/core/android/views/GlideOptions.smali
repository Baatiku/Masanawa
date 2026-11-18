.class public final Lteam/opay/core/android/views/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public B0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->e()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public C0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->h()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public D0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->i()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public E0(Ljava/lang/Class;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lteam/opay/core/android/views/GlideOptions;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->j(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public F0(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->k(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public G0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->l()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public H0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->m(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public I0(I)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public J0(Landroid/graphics/drawable/Drawable;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->o(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public K0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->p()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public L0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->S()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public M0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->T()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public N0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->U()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public O0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->V()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method

.method public P0(II)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Y(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public Q0(I)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public R0(Landroid/graphics/drawable/Drawable;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->a0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic S()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->L0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public S0(Lcom/bumptech/glide/Priority;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->b0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic T()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->M0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public T0(Lawa;Ljava/lang/Object;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Lawa;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lawa<",
            "TY;>;TY;)",
            "Lteam/opay/core/android/views/GlideOptions;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->g0(Lawa;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic U()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->N0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public U0(Lip7;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Lip7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->h0(Lip7;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic V()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->O0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public V0(F)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->i0(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public W0(Z)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public X0(Locf;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Locf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Locf<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lteam/opay/core/android/views/GlideOptions;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic Y(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/views/GlideOptions;->P0(II)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final varargs Y0([Locf;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # [Locf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Locf<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lteam/opay/core/android/views/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->p0([Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->Q0(I)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final varargs Z0([Locf;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # [Locf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Locf<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lteam/opay/core/android/views/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->q0([Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/BaseRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->y0(Lcom/bumptech/glide/request/BaseRequestOptions;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic a0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->R0(Landroid/graphics/drawable/Drawable;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a1(Z)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->r0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic b()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->z0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic b0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->S0(Lcom/bumptech/glide/Priority;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->A0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->D0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->B0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic g0(Lawa;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lawa;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/views/GlideOptions;->T0(Lawa;Ljava/lang/Object;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic h()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->C0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic h0(Lip7;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lip7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->U0(Lip7;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic i()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->D0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic i0(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->V0(F)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->E0(Ljava/lang/Class;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->W0(Z)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic k(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->F0(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic l()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->G0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Locf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->X0(Locf;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic m(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->H0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic n(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->I0(I)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic o(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->J0(Landroid/graphics/drawable/Drawable;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic p()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/GlideOptions;->K0()Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic p0([Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # [Locf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->Y0([Locf;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic q0([Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # [Locf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->Z0([Locf;)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic r0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/GlideOptions;->a1(Z)Lteam/opay/core/android/views/GlideOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y0(Lcom/bumptech/glide/request/BaseRequestOptions;)Lteam/opay/core/android/views/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/BaseRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lteam/opay/core/android/views/GlideOptions;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object p1
.end method

.method public z0()Lteam/opay/core/android/views/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->b()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lteam/opay/core/android/views/GlideOptions;

    .line 6
    .line 7
    return-object v0
.end method
