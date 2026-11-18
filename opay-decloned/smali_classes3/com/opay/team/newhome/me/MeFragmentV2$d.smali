.class public final Lcom/opay/team/newhome/me/MeFragmentV2$d;
.super Ljava/lang/Object;
.source "MeFragmentV2.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/me/MeFragmentV2;->flowBusEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/me/MeFragmentV2;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/me/MeFragmentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/me/MeFragmentV2$d;->a:Lcom/opay/team/newhome/me/MeFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/settings/profile/EnentAvatar;Ljr2;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/settings/profile/EnentAvatar;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/EnentAvatar;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/opay/team/newhome/me/MeFragmentV2$d;->a:Lcom/opay/team/newhome/me/MeFragmentV2;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/opay/team/newhome/me/MeFragmentV2;->access$getBinding(Lcom/opay/team/newhome/me/MeFragmentV2;)Lpia;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object p2, p2, Lpia;->b:Lqia;

    .line 14
    .line 15
    iget-object v0, p2, Lqia;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string p2, "accountAvatar2"

    .line 18
    .line 19
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/EnentAvatar;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget p1, Lteam/opay/pay/R$mipmap;->omain_ic_guest_avatar:I

    .line 27
    .line 28
    invoke-static {p1}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lme7;->d(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/me/MeFragmentV2$d;->a:Lcom/opay/team/newhome/me/MeFragmentV2;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/opay/team/newhome/me/MeFragmentV2;->access$getRefrshAccountInfoEvent$p(Lcom/opay/team/newhome/me/MeFragmentV2;)Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p2
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/settings/profile/EnentAvatar;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/me/MeFragmentV2$d;->c(Lteam/opay/pay/settings/profile/EnentAvatar;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
