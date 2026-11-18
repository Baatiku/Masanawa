.class final Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PayCouponFragmentDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/PayCouponFragmentDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcashier/adapter/PayCouponAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcashier/adapter/PayCouponAdapter;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;->INSTANCE:Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Lcashier/adapter/PayCouponAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcashier/adapter/PayCouponAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcashier/adapter/PayCouponAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcashier/normalpay/PayCouponFragmentDialog$adapter$2;->invoke()Lcashier/adapter/PayCouponAdapter;

    move-result-object v0

    return-object v0
.end method
