.class public final Lteam/opay/pay/history/UserTransaction;
.super Lteam/opay/pay/history/Transaction;
.source "Transaction.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/UserTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0003\u0008\u0081\u0001\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u00d2\u00012\u00020\u00012\u00020\u0002:\u0002\u00d2\u0001B\u00d1\u0004\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0018\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010.\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u000100\u0012\u0008\u0008\u0002\u00101\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u00102\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u00103\u001a\u00020\u0006\u0012\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u00105\u001a\u000206\u0012\u0008\u0008\u0002\u00107\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u00108\u001a\u00020\u0006\u0012\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0003\u0010B\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010C\u00a2\u0006\u0004\u0008E\u0010FB\u0011\u0008\u0016\u0012\u0006\u0010G\u001a\u00020H\u00a2\u0006\u0004\u0008E\u0010IJ\n\u0010\u0090\u0001\u001a\u00020\u0004H\u00c6\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u0094\u0001\u001a\u00020\u0008H\u00c6\u0003J\u000c\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0008H\u00c6\u0003J\u000c\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020\u0004H\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000c\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\n\u0010\u009e\u0001\u001a\u00020\u0018H\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a0\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a1\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a2\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a3\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a4\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a5\u0001\u001a\u00020\u0008H\u00c6\u0003J\n\u0010\u00a6\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00a7\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00a8\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00a9\u0001\u001a\u00020\u0018H\u00c6\u0003J\u000c\u0010\u00aa\u0001\u001a\u0004\u0018\u00010%H\u00c6\u0003J\u000c\u0010\u00ab\u0001\u001a\u0004\u0018\u00010%H\u00c6\u0003J\u000c\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00b2\u0001\u001a\u0004\u0018\u00010.H\u00c6\u0003J\u000c\u0010\u00b3\u0001\u001a\u0004\u0018\u000100H\u00c6\u0003J\n\u0010\u00b4\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00b5\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00b6\u0001\u001a\u00020\u0006H\u00c6\u0003J\u000c\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\n\u0010\u00b8\u0001\u001a\u000206H\u00c6\u0003J\n\u0010\u00b9\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00ba\u0001\u001a\u00020\u0006H\u00c6\u0003J\u000c\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u00bc\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000c\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u00c2\u0001\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0012\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0003\u0010\u008b\u0001J\u0012\u0010\u00c4\u0001\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010CH\u00c6\u0003J\u00da\u0004\u0010\u00c5\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00062\u0008\u0008\u0002\u0010!\u001a\u00020\u00062\u0008\u0008\u0002\u0010\"\u001a\u00020\u00062\u0008\u0008\u0002\u0010#\u001a\u00020\u00182\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u0001002\u0008\u0008\u0002\u00101\u001a\u00020\u00062\u0008\u0008\u0002\u00102\u001a\u00020\u00062\u0008\u0008\u0002\u00103\u001a\u00020\u00062\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020\u00062\u0008\u0008\u0002\u00108\u001a\u00020\u00062\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010\u00042\u0010\u0008\u0003\u0010B\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010CH\u00c6\u0001\u00a2\u0006\u0003\u0010\u00c6\u0001J\u0007\u0010\u00c7\u0001\u001a\u00020\u0004J\u0016\u0010\u00c8\u0001\u001a\u00020\u00182\n\u0010\u00c9\u0001\u001a\u0005\u0018\u00010\u00ca\u0001H\u00d6\u0003J\n\u0010\u00cb\u0001\u001a\u00020\u0004H\u00d6\u0001J\n\u0010\u00cc\u0001\u001a\u00020\u0008H\u00d6\u0001J\u001b\u0010\u00cd\u0001\u001a\u00030\u00ce\u00012\u0008\u0010\u00cf\u0001\u001a\u00030\u00d0\u00012\u0007\u0010\u00d1\u0001\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\u00020\u00048\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0016\u0010\u0005\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010OR\u0014\u0010\t\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010OR\u0014\u0010\n\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010OR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010SR\u0014\u0010\r\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010OR\u0014\u0010\u000e\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010OR\u0014\u0010\u000f\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010OR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010XR\u0014\u0010\u0012\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010OR\u0014\u0010\u0013\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010KR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010\\R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010\\R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010_R\u0014\u0010\u0019\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010OR\u0014\u0010\u001a\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010OR\u0014\u0010\u001b\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010OR\u0014\u0010\u001c\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008c\u0010OR\u0014\u0010\u001d\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010OR\u0014\u0010\u001e\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010OR\u0014\u0010\u001f\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010OR\u0016\u0010 \u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008g\u0010MR\u0014\u0010!\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008h\u0010MR\u0016\u0010\"\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u0010MR\u0014\u0010#\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010_R\u0018\u0010$\u001a\u0004\u0018\u00010%8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010lR\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010lR\u001c\u0010\'\u001a\u0004\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010O\"\u0004\u0008o\u0010pR\u0016\u0010(\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008q\u0010OR\u0016\u0010)\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008r\u0010OR\u0016\u0010*\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008s\u0010OR\u0016\u0010+\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008t\u0010OR\u0016\u0010,\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010OR\u0016\u0010-\u001a\u0004\u0018\u00010.X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008v\u0010wR\u0018\u0010/\u001a\u0004\u0018\u0001008\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008x\u0010yR\u0016\u00101\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008z\u0010MR\u0016\u00102\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008{\u0010MR\u0016\u00103\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008|\u0010MR\u0016\u00104\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008}\u0010OR\u0014\u00105\u001a\u000206X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008~\u0010\u007fR\u0017\u00107\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010MR\u0017\u00108\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010MR\u0019\u00109\u001a\u0004\u0018\u00010\u00068\u0016X\u0097\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010MR\u0017\u0010:\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010OR\u0017\u0010;\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0084\u0001\u0010OR\u0017\u0010<\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0085\u0001\u0010OR\u0017\u0010=\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0086\u0001\u0010OR\u0017\u0010>\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0087\u0001\u0010OR\u0019\u0010?\u001a\u0004\u0018\u00010\u00068\u0016X\u0097\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0088\u0001\u0010MR\u0017\u0010@\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0089\u0001\u0010OR\u001b\u0010A\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\r\n\u0003\u0010\u008c\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001e\u0010B\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010CX\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u0013\u0010\u008f\u0001\u001a\u00020\u00188F\u00a2\u0006\u0007\u001a\u0005\u0008\u008f\u0001\u0010_\u00a8\u0006\u00d3\u0001"
    }
    d2 = {
        "Lteam/opay/pay/history/UserTransaction;",
        "Landroid/os/Parcelable;",
        "Lteam/opay/pay/history/Transaction;",
        "id",
        "",
        "amount",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "referrer",
        "",
        "referrerAmount",
        "date",
        "type",
        "Lteam/opay/core/api/GraphQL$TransactionType;",
        "paymentInstrument",
        "phoneNumber",
        "principalPhoneNumber",
        "serviceType",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceName",
        "cashback",
        "state",
        "Lteam/opay/core/api/GraphQL$TransactionState;",
        "stateHint",
        "refunded",
        "",
        "recipientBankName",
        "transactionID",
        "recipientName",
        "recipientAccount",
        "paymentInstrumentNumber",
        "message",
        "serviceID",
        "amountAfterFee",
        "balanceAfter",
        "fee",
        "chargedBack",
        "chargebackData",
        "Lteam/opay/core/api/GraphQL$ReferenceData;",
        "refundData",
        "senderPhone",
        "senderName",
        "senderBankName",
        "senderAccountNumber",
        "nipTransactionRef",
        "businessName",
        "businessCategory",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "coupon",
        "Lteam/opay/core/api/GraphQL$Template;",
        "paidAmount",
        "chargedAmount",
        "discountAmount",
        "terminalId",
        "newCashBack",
        "",
        "commisionAmount",
        "additionalAmount",
        "stampDuty",
        "billName",
        "payInformation",
        "rechargePIN",
        "miscData",
        "paymentType",
        "voucherAmount",
        "typeView",
        "opType",
        "revenueBreakdownList",
        "",
        "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
        "<init>",
        "(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V",
        "userTransaction",
        "Lteam/opay/core/api/GraphQL$UserTransaction;",
        "(Lteam/opay/core/api/GraphQL$UserTransaction;)V",
        "getId",
        "()I",
        "getAmount",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "getReferrer",
        "()Ljava/lang/String;",
        "getReferrerAmount",
        "getDate",
        "getType",
        "()Lteam/opay/core/api/GraphQL$TransactionType;",
        "getPaymentInstrument",
        "getPhoneNumber",
        "getPrincipalPhoneNumber",
        "getServiceType",
        "()Lteam/opay/core/api/GraphQL$ServiceType;",
        "getServiceName",
        "getCashback",
        "getState",
        "()Lteam/opay/core/api/GraphQL$TransactionState;",
        "getStateHint",
        "getRefunded",
        "()Z",
        "getRecipientBankName",
        "getTransactionID",
        "getRecipientName",
        "getRecipientAccount",
        "getPaymentInstrumentNumber",
        "getMessage",
        "getServiceID",
        "getAmountAfterFee",
        "getBalanceAfter",
        "getFee",
        "getChargedBack",
        "getChargebackData",
        "()Lteam/opay/core/api/GraphQL$ReferenceData;",
        "getRefundData",
        "getSenderPhone",
        "setSenderPhone",
        "(Ljava/lang/String;)V",
        "getSenderName",
        "getSenderBankName",
        "getSenderAccountNumber",
        "getNipTransactionRef",
        "getBusinessName",
        "getBusinessCategory",
        "()Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "getCoupon",
        "()Lteam/opay/core/api/GraphQL$Template;",
        "getPaidAmount",
        "getChargedAmount",
        "getDiscountAmount",
        "getTerminalId",
        "getNewCashBack",
        "()F",
        "getCommisionAmount",
        "getAdditionalAmount",
        "getStampDuty",
        "getBillName",
        "getPayInformation",
        "getRechargePIN",
        "getMiscData",
        "getPaymentType",
        "getVoucherAmount",
        "getTypeView",
        "getOpType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getRevenueBreakdownList",
        "()Ljava/util/List;",
        "isInvestPaymentInstrument",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "component40",
        "component41",
        "component42",
        "component43",
        "component44",
        "component45",
        "component46",
        "component47",
        "component48",
        "component49",
        "component50",
        "component51",
        "component52",
        "component53",
        "copy",
        "(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lteam/opay/pay/history/UserTransaction;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lteam/opay/pay/history/UserTransaction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lteam/opay/pay/history/UserTransaction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVESTMENT_PAYMENT_INSTRUMENT:Ljava/lang/String; = "Investment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVESTMENT_PAYMENT_WALLET:Ljava/lang/String; = "Wallet"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SENDER_NAME_OWEALTH:Ljava/lang/String; = "owealth"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final billName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final businessName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cashback:I

.field private final chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chargedBack:Z

.field private final commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coupon:Lteam/opay/core/api/GraphQL$Template;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final date:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:I

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final miscData:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final newCashBack:F

.field private final nipTransactionRef:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final opType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final payInformation:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paymentInstrument:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentInstrumentNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final principalPhoneNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rechargePIN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final recipientAccount:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recipientBankName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recipientName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final referrer:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final referrerAmount:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final refundData:Lteam/opay/core/api/GraphQL$ReferenceData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final refunded:Z

.field private final revenueBreakdownList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final senderAccountNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final senderBankName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final senderName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private senderPhone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serviceID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serviceType:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final state:Lteam/opay/core/api/GraphQL$TransactionState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stateHint:Lteam/opay/core/api/GraphQL$TransactionState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final terminalId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final transactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Lteam/opay/core/api/GraphQL$TransactionType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final typeView:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/UserTransaction$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/UserTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/UserTransaction;->Companion:Lteam/opay/pay/history/UserTransaction$Companion;

    .line 8
    .line 9
    new-instance v0, Lteam/opay/pay/history/UserTransaction$Creator;

    .line 10
    .line 11
    invoke-direct {v0}, Lteam/opay/pay/history/UserTransaction$Creator;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/pay/history/UserTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 57

    .line 1
    move-object/from16 v0, p0

    const v55, 0x1fffff

    const/16 v56, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, -0x1

    invoke-direct/range {v0 .. v56}, Lteam/opay/pay/history/UserTransaction;-><init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 16
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/GraphQL$TransactionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/api/GraphQL$TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lteam/opay/core/api/GraphQL$TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p23    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p27    # Lteam/opay/core/api/GraphQL$ReferenceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Lteam/opay/core/api/GraphQL$ReferenceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Lteam/opay/core/api/GraphQL$BusinessCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Lteam/opay/core/api/GraphQL$Template;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p38    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p39    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p43    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p44    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p52    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p53    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$TransactionType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            "Ljava/lang/String;",
            "I",
            "Lteam/opay/core/api/GraphQL$TransactionState;",
            "Lteam/opay/core/api/GraphQL$TransactionState;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Z",
            "Lteam/opay/core/api/GraphQL$ReferenceData;",
            "Lteam/opay/core/api/GraphQL$ReferenceData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$BusinessCategory;",
            "Lteam/opay/core/api/GraphQL$Template;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "F",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p19

    move-object/from16 v13, p20

    move-object/from16 v14, p21

    move-object/from16 v15, p22

    move-object/from16 v0, p23

    const-string v0, "amount"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrerAmount"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentInstrument"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "principalPhoneNumber"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceName"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientBankName"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionID"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientName"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAccount"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentInstrumentNumber"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceID"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountAfterFee"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balanceAfter"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fee"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paidAmount"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargedAmount"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discountAmount"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commisionAmount"

    move-object/from16 v15, p42

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAmount"

    move-object/from16 v15, p43

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v15, p0

    .line 13
    invoke-direct {v15, v0}, Lteam/opay/pay/history/Transaction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v0, p1

    .line 14
    iput v0, v15, Lteam/opay/pay/history/UserTransaction;->id:I

    .line 15
    iput-object v1, v15, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 16
    iput-object v2, v15, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    .line 17
    iput-object v3, v15, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    .line 18
    iput-object v4, v15, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 19
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 20
    iput-object v5, v15, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    .line 21
    iput-object v6, v15, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    .line 22
    iput-object v7, v15, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 23
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 24
    iput-object v8, v15, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    move/from16 v0, p12

    .line 25
    iput v0, v15, Lteam/opay/pay/history/UserTransaction;->cashback:I

    move-object/from16 v0, p13

    .line 26
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    move-object/from16 v0, p14

    .line 27
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    move/from16 v0, p15

    .line 28
    iput-boolean v0, v15, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    .line 29
    iput-object v9, v15, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    .line 30
    iput-object v10, v15, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    .line 31
    iput-object v11, v15, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    .line 32
    iput-object v12, v15, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    .line 33
    iput-object v13, v15, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    .line 34
    iput-object v14, v15, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    move-object/from16 v0, p22

    .line 35
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    move-object/from16 v0, p23

    .line 36
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v0, p24

    move-object/from16 v1, p25

    .line 37
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 38
    iput-object v1, v15, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move/from16 v0, p26

    .line 39
    iput-boolean v0, v15, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    move-object/from16 v0, p27

    .line 40
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    move-object/from16 v0, p28

    .line 41
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    move-object/from16 v0, p29

    .line 42
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    move-object/from16 v0, p30

    .line 43
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    move-object/from16 v0, p31

    .line 44
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    move-object/from16 v0, p32

    .line 45
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    move-object/from16 v0, p33

    .line 46
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    move-object/from16 v0, p34

    .line 47
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    move-object/from16 v0, p35

    .line 48
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    move-object/from16 v0, p36

    .line 49
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    move-object/from16 v0, p37

    move-object/from16 v1, p38

    .line 50
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 51
    iput-object v1, v15, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v0, p39

    move-object/from16 v1, p42

    .line 52
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v0, p40

    .line 53
    iput-object v0, v15, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    move/from16 v0, p41

    .line 54
    iput v0, v15, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 55
    iput-object v1, v15, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p43

    move-object v0, v15

    .line 56
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p44

    .line 57
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p45

    .line 58
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    move-object/from16 v1, p46

    .line 59
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    move-object/from16 v1, p47

    .line 60
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    move-object/from16 v1, p48

    .line 61
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    move-object/from16 v1, p49

    .line 62
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    move-object/from16 v1, p50

    .line 63
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p51

    .line 64
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    move-object/from16 v1, p52

    .line 65
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    move-object/from16 v1, p53

    .line 66
    iput-object v1, v0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 52

    move/from16 v0, p54

    move/from16 v1, p55

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    .line 2
    sget-object v4, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 3
    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    move-object v7, v6

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    move-object v8, v6

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    move-object v11, v6

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    move-object v12, v6

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    move-object v13, v6

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p10

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    move-object v15, v6

    goto :goto_a

    :cond_a
    move-object/from16 v15, p11

    :goto_a
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    move/from16 v3, p12

    :goto_b
    and-int/lit16 v10, v0, 0x1000

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v10, p13

    :goto_c
    move-object/from16 p2, v6

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v6, p14

    :goto_d
    move-object/from16 v16, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move/from16 v6, p15

    :goto_e
    const v17, 0x8000

    and-int v18, v0, v17

    if-eqz v18, :cond_f

    move-object/from16 v18, p2

    goto :goto_f

    :cond_f
    move-object/from16 v18, p16

    :goto_f
    const/high16 v19, 0x10000

    and-int v20, v0, v19

    if-eqz v20, :cond_10

    move-object/from16 v20, p2

    goto :goto_10

    :cond_10
    move-object/from16 v20, p17

    :goto_10
    const/high16 v21, 0x20000

    and-int v22, v0, v21

    if-eqz v22, :cond_11

    move-object/from16 v22, p2

    goto :goto_11

    :cond_11
    move-object/from16 v22, p18

    :goto_11
    const/high16 v23, 0x40000

    and-int v24, v0, v23

    if-eqz v24, :cond_12

    move-object/from16 v24, p2

    goto :goto_12

    :cond_12
    move-object/from16 v24, p19

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    move-object/from16 v25, p2

    goto :goto_13

    :cond_13
    move-object/from16 v25, p20

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    move-object/from16 v26, p2

    goto :goto_14

    :cond_14
    move-object/from16 v26, p21

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    move-object/from16 v27, p2

    goto :goto_15

    :cond_15
    move-object/from16 v27, p22

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    .line 4
    sget-object v28, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual/range {v28 .. v28}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v28

    goto :goto_16

    :cond_16
    move-object/from16 v28, p23

    :goto_16
    const/high16 v29, 0x800000

    and-int v29, v0, v29

    if-eqz v29, :cond_17

    .line 5
    sget-object v29, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual/range {v29 .. v29}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v29

    goto :goto_17

    :cond_17
    move-object/from16 v29, p24

    :goto_17
    const/high16 v30, 0x1000000

    and-int v30, v0, v30

    if-eqz v30, :cond_18

    .line 6
    sget-object v30, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual/range {v30 .. v30}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v30

    goto :goto_18

    :cond_18
    move-object/from16 v30, p25

    :goto_18
    const/high16 v31, 0x2000000

    and-int v31, v0, v31

    if-eqz v31, :cond_19

    const/16 v31, 0x0

    goto :goto_19

    :cond_19
    move/from16 v31, p26

    :goto_19
    const/high16 v32, 0x4000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1a

    const/16 v32, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v32, p27

    :goto_1a
    const/high16 v33, 0x8000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1b

    const/16 v33, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v33, p28

    :goto_1b
    const/high16 v34, 0x10000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1c

    const/16 v34, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v34, p29

    :goto_1c
    const/high16 v35, 0x20000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1d

    const/16 v35, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v35, p30

    :goto_1d
    const/high16 v36, 0x40000000    # 2.0f

    and-int v36, v0, v36

    if-eqz v36, :cond_1e

    const/16 v36, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v36, p31

    :goto_1e
    const/high16 v37, -0x80000000

    and-int v0, v0, v37

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v37, v1, 0x1

    if-eqz v37, :cond_20

    const/16 v37, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v37, p33

    :goto_20
    and-int/lit8 v38, v1, 0x2

    if-eqz v38, :cond_21

    const/16 v38, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v38, p34

    :goto_21
    and-int/lit8 v39, v1, 0x4

    if-eqz v39, :cond_22

    const/16 v39, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v39, p35

    :goto_22
    and-int/lit8 v40, v1, 0x8

    if-eqz v40, :cond_23

    const/16 v40, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v40, p36

    :goto_23
    and-int/lit8 v41, v1, 0x10

    if-eqz v41, :cond_24

    .line 7
    sget-object v41, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual/range {v41 .. v41}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v41

    goto :goto_24

    :cond_24
    move-object/from16 v41, p37

    :goto_24
    and-int/lit8 v42, v1, 0x20

    if-eqz v42, :cond_25

    .line 8
    sget-object v42, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual/range {v42 .. v42}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v42

    goto :goto_25

    :cond_25
    move-object/from16 v42, p38

    :goto_25
    and-int/lit8 v43, v1, 0x40

    if-eqz v43, :cond_26

    .line 9
    sget-object v43, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual/range {v43 .. v43}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v43

    goto :goto_26

    :cond_26
    move-object/from16 v43, p39

    :goto_26
    move-object/from16 p54, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p40

    :goto_27
    move-object/from16 p56, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move/from16 v0, p41

    :goto_28
    move/from16 v44, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p42

    :goto_29
    move-object/from16 v45, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_2a

    .line 11
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p43

    :goto_2a
    move-object/from16 v46, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v0, p44

    :goto_2b
    move-object/from16 v47, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2c
    move-object/from16 v0, p45

    :goto_2c
    move-object/from16 v48, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2d
    move-object/from16 v0, p46

    :goto_2d
    move-object/from16 v49, v0

    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2e
    move-object/from16 v0, p47

    :goto_2e
    and-int v17, v1, v17

    if-eqz v17, :cond_2f

    const/16 v17, 0x0

    goto :goto_2f

    :cond_2f
    move-object/from16 v17, p48

    :goto_2f
    and-int v19, v1, v19

    if-eqz v19, :cond_30

    const/16 v19, 0x0

    goto :goto_30

    :cond_30
    move-object/from16 v19, p49

    :goto_30
    and-int v21, v1, v21

    if-eqz v21, :cond_31

    const/16 v21, 0x0

    goto :goto_31

    :cond_31
    move-object/from16 v21, p50

    :goto_31
    and-int v23, v1, v23

    if-eqz v23, :cond_32

    const/16 v23, 0x0

    goto :goto_32

    :cond_32
    move-object/from16 v23, p51

    :goto_32
    const/high16 v50, 0x80000

    and-int v50, v1, v50

    if-eqz v50, :cond_33

    const/16 v50, 0x0

    goto :goto_33

    :cond_33
    move-object/from16 v50, p52

    :goto_33
    const/high16 v51, 0x100000

    and-int v1, v1, v51

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    goto :goto_34

    :cond_34
    move-object/from16 v1, p53

    :goto_34
    move-object/from16 p1, p0

    move/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v11

    move-object/from16 p9, v12

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move-object/from16 p12, v15

    move/from16 p13, v3

    move-object/from16 p14, v10

    move-object/from16 p15, v16

    move/from16 p16, v6

    move-object/from16 p17, v18

    move-object/from16 p18, v20

    move-object/from16 p19, v22

    move-object/from16 p20, v24

    move-object/from16 p21, v25

    move-object/from16 p22, v26

    move-object/from16 p23, v27

    move-object/from16 p24, v28

    move-object/from16 p25, v29

    move-object/from16 p26, v30

    move/from16 p27, v31

    move-object/from16 p28, v32

    move-object/from16 p29, v33

    move-object/from16 p30, v34

    move-object/from16 p31, v35

    move-object/from16 p32, v36

    move-object/from16 p33, p54

    move-object/from16 p34, v37

    move-object/from16 p35, v38

    move-object/from16 p36, v39

    move-object/from16 p37, v40

    move-object/from16 p38, v41

    move-object/from16 p39, v42

    move-object/from16 p40, v43

    move-object/from16 p41, p56

    move/from16 p42, v44

    move-object/from16 p43, v45

    move-object/from16 p44, v46

    move-object/from16 p45, v47

    move-object/from16 p46, v48

    move-object/from16 p47, v49

    move-object/from16 p48, v0

    move-object/from16 p49, v17

    move-object/from16 p50, v19

    move-object/from16 p51, v21

    move-object/from16 p52, v23

    move-object/from16 p53, v50

    move-object/from16 p54, v1

    .line 12
    invoke-direct/range {p1 .. p54}, Lteam/opay/pay/history/UserTransaction;-><init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/core/api/GraphQL$UserTransaction;)V
    .locals 56
    .param p1    # Lteam/opay/core/api/GraphQL$UserTransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userTransaction"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v4

    .line 68
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->H()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->I()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->n()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->V()Lteam/opay/core/api/GraphQL$TransactionType;

    move-result-object v8

    .line 72
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->y()Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->B()Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->C()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v11, v0

    .line 75
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->Q()Lteam/opay/core/api/GraphQL$ServiceType;

    move-result-object v12

    .line 76
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->P()Ljava/lang/String;

    move-result-object v13

    .line 77
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_2

    .line 80
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 81
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 82
    invoke-interface {v14, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 84
    invoke-static {v0, v14, v14, v2, v3}, Lkmf;->S(Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    move v14, v0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 85
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->S()Lteam/opay/core/api/GraphQL$TransactionState;

    move-result-object v15

    .line 86
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->T()Lteam/opay/core/api/GraphQL$TransactionState;

    move-result-object v16

    .line 87
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->K()Z

    move-result v17

    .line 88
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->F()Ljava/lang/String;

    move-result-object v18

    .line 89
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->r()Ljava/lang/String;

    move-result-object v19

    .line 90
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->G()Ljava/lang/String;

    move-result-object v20

    .line 91
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->E()Ljava/lang/String;

    move-result-object v21

    .line 92
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->z()Ljava/lang/String;

    move-result-object v22

    .line 93
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->s()Ljava/lang/String;

    move-result-object v23

    .line 94
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->O()Ljava/lang/String;

    move-result-object v24

    .line 95
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v25

    .line 96
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v26

    .line 97
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->q()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v27

    .line 98
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->k()Z

    move-result v28

    .line 99
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->i()Lteam/opay/core/api/GraphQL$ReferenceData;

    move-result-object v29

    .line 100
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->J()Lteam/opay/core/api/GraphQL$ReferenceData;

    move-result-object v30

    .line 101
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->N()Ljava/lang/String;

    move-result-object v31

    .line 102
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->M()Lteam/opay/core/api/GraphQL$SenderData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$SenderData;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    goto :goto_2

    :cond_4
    move-object/from16 v32, v3

    .line 103
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->M()Lteam/opay/core/api/GraphQL$SenderData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$SenderData;->b()Lteam/opay/core/api/GraphQL$SenderInstrument;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$SenderInstrument;->b()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    goto :goto_3

    :cond_5
    move-object/from16 v33, v3

    .line 104
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->M()Lteam/opay/core/api/GraphQL$SenderData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$SenderData;->b()Lteam/opay/core/api/GraphQL$SenderInstrument;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$SenderInstrument;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    goto :goto_4

    :cond_6
    move-object/from16 v34, v3

    .line 105
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->p()Ljava/lang/String;

    move-result-object v35

    .line 106
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->g()Ljava/lang/String;

    move-result-object v36

    .line 107
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->f()Lteam/opay/core/api/GraphQL$BusinessCategory;

    move-result-object v37

    .line 108
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->m()Lteam/opay/core/api/GraphQL$Template;

    move-result-object v38

    .line 109
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->w()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v39

    .line 110
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->j()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v40

    .line 111
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->o()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v41

    .line 112
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->U()Ljava/lang/String;

    move-result-object v42

    .line 113
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move/from16 v43, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/16 v43, 0x0

    .line 114
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->l()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v0

    :cond_8
    move-object/from16 v44, v0

    .line 115
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v0

    :cond_9
    move-object/from16 v45, v0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->R()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v46

    .line 117
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->e()Ljava/lang/String;

    move-result-object v47

    .line 118
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->x()Ljava/lang/String;

    move-result-object v48

    .line 119
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->D()Ljava/lang/String;

    move-result-object v49

    .line 120
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->t()Ljava/lang/String;

    move-result-object v50

    .line 121
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->A()Ljava/lang/String;

    move-result-object v51

    .line 122
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->X()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v52

    .line 123
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->W()Ljava/lang/String;

    move-result-object v53

    .line 124
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->v()Ljava/lang/Integer;

    move-result-object v54

    .line 125
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$UserTransaction;->L()Ljava/util/List;

    move-result-object v55

    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 126
    invoke-direct/range {v2 .. v55}, Lteam/opay/pay/history/UserTransaction;-><init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/history/UserTransaction;ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Object;)Lteam/opay/pay/history/UserTransaction;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p54

    move/from16 v2, p55

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lteam/opay/pay/history/UserTransaction;->id:I

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    goto :goto_b

    :cond_b
    move/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    move/from16 p15, v15

    if-eqz v17, :cond_f

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, v1, v17

    move-object/from16 p16, v15

    if-eqz v18, :cond_10

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, v1, v18

    move-object/from16 p17, v15

    if-eqz v19, :cond_11

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, v1, v19

    move-object/from16 p18, v15

    if-eqz v20, :cond_12

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, v1, v20

    move-object/from16 p19, v15

    if-eqz v21, :cond_13

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, v1, v21

    move-object/from16 p20, v15

    if-eqz v22, :cond_14

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v1, v22

    move-object/from16 p21, v15

    if-eqz v22, :cond_15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v22, 0x400000

    and-int v22, v1, v22

    move-object/from16 p22, v15

    if-eqz v22, :cond_16

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v22, 0x800000

    and-int v22, v1, v22

    move-object/from16 p23, v15

    if-eqz v22, :cond_17

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v22, 0x1000000

    and-int v22, v1, v22

    move-object/from16 p24, v15

    if-eqz v22, :cond_18

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v22, 0x2000000

    and-int v22, v1, v22

    move-object/from16 p25, v15

    if-eqz v22, :cond_19

    iget-boolean v15, v0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    goto :goto_19

    :cond_19
    move/from16 v15, p26

    :goto_19
    const/high16 v22, 0x4000000

    and-int v22, v1, v22

    move/from16 p26, v15

    if-eqz v22, :cond_1a

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v22, 0x8000000

    and-int v22, v1, v22

    move-object/from16 p27, v15

    if-eqz v22, :cond_1b

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v22, 0x10000000

    and-int v22, v1, v22

    move-object/from16 p28, v15

    if-eqz v22, :cond_1c

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v22, 0x20000000

    and-int v22, v1, v22

    move-object/from16 p29, v15

    if-eqz v22, :cond_1d

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v22, 0x40000000    # 2.0f

    and-int v22, v1, v22

    move-object/from16 p30, v15

    if-eqz v22, :cond_1e

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v22, -0x80000000

    and-int v1, v1, v22

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v22, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v22, :cond_20

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v22, v2, 0x2

    move-object/from16 p33, v1

    if-eqz v22, :cond_21

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v22, v2, 0x4

    move-object/from16 p34, v1

    if-eqz v22, :cond_22

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v22, v2, 0x8

    move-object/from16 p35, v1

    if-eqz v22, :cond_23

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v22, v2, 0x10

    move-object/from16 p36, v1

    if-eqz v22, :cond_24

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v22, v2, 0x20

    move-object/from16 p37, v1

    if-eqz v22, :cond_25

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v22, v2, 0x40

    move-object/from16 p38, v1

    if-eqz v22, :cond_26

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p39

    :goto_26
    move-object/from16 p39, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p40, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget v1, v0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    goto :goto_28

    :cond_28
    move/from16 v1, p41

    :goto_28
    move/from16 p41, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_29

    :cond_29
    move-object/from16 v1, p42

    :goto_29
    move-object/from16 p42, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_2a

    :cond_2a
    move-object/from16 v1, p43

    :goto_2a
    move-object/from16 p43, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p44

    :goto_2b
    move-object/from16 p44, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    goto :goto_2c

    :cond_2c
    move-object/from16 v1, p45

    :goto_2c
    move-object/from16 p45, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    goto :goto_2d

    :cond_2d
    move-object/from16 v1, p46

    :goto_2d
    move-object/from16 p46, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    goto :goto_2e

    :cond_2e
    move-object/from16 v1, p47

    :goto_2e
    and-int v16, v2, v16

    move-object/from16 p47, v1

    if-eqz v16, :cond_2f

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    goto :goto_2f

    :cond_2f
    move-object/from16 v1, p48

    :goto_2f
    and-int v16, v2, v17

    move-object/from16 p48, v1

    if-eqz v16, :cond_30

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    goto :goto_30

    :cond_30
    move-object/from16 v1, p49

    :goto_30
    and-int v16, v2, v18

    move-object/from16 p49, v1

    if-eqz v16, :cond_31

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_31

    :cond_31
    move-object/from16 v1, p50

    :goto_31
    and-int v16, v2, v19

    move-object/from16 p50, v1

    if-eqz v16, :cond_32

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    goto :goto_32

    :cond_32
    move-object/from16 v1, p51

    :goto_32
    and-int v16, v2, v20

    move-object/from16 p51, v1

    if-eqz v16, :cond_33

    iget-object v1, v0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    goto :goto_33

    :cond_33
    move-object/from16 v1, p52

    :goto_33
    and-int v2, v2, v21

    if-eqz v2, :cond_34

    iget-object v2, v0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    goto :goto_34

    :cond_34
    move-object/from16 v2, p53

    :goto_34
    move/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move/from16 p12, v14

    move-object/from16 p31, v15

    move-object/from16 p52, v1

    move-object/from16 p53, v2

    invoke-virtual/range {p0 .. p53}, Lteam/opay/pay/history/UserTransaction;->copy(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lteam/opay/pay/history/UserTransaction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    .line 2
    .line 3
    return v0
.end method

.method public final component13()Lteam/opay/core/api/GraphQL$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Lteam/opay/core/api/GraphQL$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component27()Lteam/opay/core/api/GraphQL$ReferenceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component28()Lteam/opay/core/api/GraphQL$ReferenceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component35()Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component36()Lteam/opay/core/api/GraphQL$Template;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component37()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component38()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component39()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component40()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component41()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 2
    .line 3
    return v0
.end method

.method public final component42()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component43()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component44()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component45()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component46()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component47()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component48()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component49()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component50()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component51()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component52()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component53()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lteam/opay/core/api/GraphQL$TransactionType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lteam/opay/pay/history/UserTransaction;
    .locals 55
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/GraphQL$TransactionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/api/GraphQL$TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lteam/opay/core/api/GraphQL$TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p23    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p27    # Lteam/opay/core/api/GraphQL$ReferenceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Lteam/opay/core/api/GraphQL$ReferenceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Lteam/opay/core/api/GraphQL$BusinessCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Lteam/opay/core/api/GraphQL$Template;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p38    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p39    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p43    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p44    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p52    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p53    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$TransactionType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            "Ljava/lang/String;",
            "I",
            "Lteam/opay/core/api/GraphQL$TransactionState;",
            "Lteam/opay/core/api/GraphQL$TransactionState;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Z",
            "Lteam/opay/core/api/GraphQL$ReferenceData;",
            "Lteam/opay/core/api/GraphQL$ReferenceData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$BusinessCategory;",
            "Lteam/opay/core/api/GraphQL$Template;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "F",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;)",
            "Lteam/opay/pay/history/UserTransaction;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    move-object/from16 v44, p44

    move-object/from16 v45, p45

    move-object/from16 v46, p46

    move-object/from16 v47, p47

    move-object/from16 v48, p48

    move-object/from16 v49, p49

    move-object/from16 v50, p50

    move-object/from16 v51, p51

    move-object/from16 v52, p52

    move-object/from16 v53, p53

    const-string v0, "amount"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrerAmount"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentInstrument"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "principalPhoneNumber"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceName"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientBankName"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionID"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientName"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAccount"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentInstrumentNumber"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceID"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountAfterFee"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balanceAfter"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fee"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paidAmount"

    move-object/from16 v1, p37

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargedAmount"

    move-object/from16 v1, p38

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discountAmount"

    move-object/from16 v1, p39

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commisionAmount"

    move-object/from16 v1, p42

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAmount"

    move-object/from16 v1, p43

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v54, Lteam/opay/pay/history/UserTransaction;

    move-object/from16 v0, v54

    move/from16 v1, p1

    invoke-direct/range {v0 .. v53}, Lteam/opay/pay/history/UserTransaction;-><init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-object v54
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/pay/history/UserTransaction;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/pay/history/UserTransaction;

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/pay/history/UserTransaction;->id:I

    .line 14
    .line 15
    iget v3, p1, Lteam/opay/pay/history/UserTransaction;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 65
    .line 66
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_a

    .line 102
    .line 103
    return v2

    .line 104
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 105
    .line 106
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 107
    .line 108
    if-eq v1, v3, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget v1, p0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    .line 123
    .line 124
    iget v3, p1, Lteam/opay/pay/history/UserTransaction;->cashback:I

    .line 125
    .line 126
    if-eq v1, v3, :cond_d

    .line 127
    .line 128
    return v2

    .line 129
    :cond_d
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 130
    .line 131
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 132
    .line 133
    if-eq v1, v3, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 137
    .line 138
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 139
    .line 140
    if-eq v1, v3, :cond_f

    .line 141
    .line 142
    return v2

    .line 143
    :cond_f
    iget-boolean v1, p0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    .line 144
    .line 145
    iget-boolean v3, p1, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    .line 146
    .line 147
    if-eq v1, v3, :cond_10

    .line 148
    .line 149
    return v2

    .line 150
    :cond_10
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_11

    .line 159
    .line 160
    return v2

    .line 161
    :cond_11
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_12

    .line 170
    .line 171
    return v2

    .line 172
    :cond_12
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_13

    .line 181
    .line 182
    return v2

    .line 183
    :cond_13
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_14

    .line 192
    .line 193
    return v2

    .line 194
    :cond_14
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_15

    .line 203
    .line 204
    return v2

    .line 205
    :cond_15
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_16

    .line 214
    .line 215
    return v2

    .line 216
    :cond_16
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_17

    .line 225
    .line 226
    return v2

    .line 227
    :cond_17
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 228
    .line 229
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 230
    .line 231
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_18

    .line 236
    .line 237
    return v2

    .line 238
    :cond_18
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 239
    .line 240
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 241
    .line 242
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_19

    .line 247
    .line 248
    return v2

    .line 249
    :cond_19
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 250
    .line 251
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 252
    .line 253
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_1a

    .line 258
    .line 259
    return v2

    .line 260
    :cond_1a
    iget-boolean v1, p0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    .line 261
    .line 262
    iget-boolean v3, p1, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    .line 263
    .line 264
    if-eq v1, v3, :cond_1b

    .line 265
    .line 266
    return v2

    .line 267
    :cond_1b
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 268
    .line 269
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 270
    .line 271
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-nez v1, :cond_1c

    .line 276
    .line 277
    return v2

    .line 278
    :cond_1c
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 279
    .line 280
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 281
    .line 282
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_1d

    .line 287
    .line 288
    return v2

    .line 289
    :cond_1d
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-nez v1, :cond_1e

    .line 298
    .line 299
    return v2

    .line 300
    :cond_1e
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    .line 301
    .line 302
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_1f

    .line 309
    .line 310
    return v2

    .line 311
    :cond_1f
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    .line 312
    .line 313
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_20

    .line 320
    .line 321
    return v2

    .line 322
    :cond_20
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_21

    .line 331
    .line 332
    return v2

    .line 333
    :cond_21
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-nez v1, :cond_22

    .line 342
    .line 343
    return v2

    .line 344
    :cond_22
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    .line 345
    .line 346
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    .line 347
    .line 348
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_23

    .line 353
    .line 354
    return v2

    .line 355
    :cond_23
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 356
    .line 357
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 358
    .line 359
    if-eq v1, v3, :cond_24

    .line 360
    .line 361
    return v2

    .line 362
    :cond_24
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    .line 363
    .line 364
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    .line 365
    .line 366
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_25

    .line 371
    .line 372
    return v2

    .line 373
    :cond_25
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 374
    .line 375
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 376
    .line 377
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_26

    .line 382
    .line 383
    return v2

    .line 384
    :cond_26
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 385
    .line 386
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 387
    .line 388
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_27

    .line 393
    .line 394
    return v2

    .line 395
    :cond_27
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 396
    .line 397
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 398
    .line 399
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_28

    .line 404
    .line 405
    return v2

    .line 406
    :cond_28
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    .line 407
    .line 408
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_29

    .line 415
    .line 416
    return v2

    .line 417
    :cond_29
    iget v1, p0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 418
    .line 419
    iget v3, p1, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 420
    .line 421
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_2a

    .line 426
    .line 427
    return v2

    .line 428
    :cond_2a
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 429
    .line 430
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 431
    .line 432
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-nez v1, :cond_2b

    .line 437
    .line 438
    return v2

    .line 439
    :cond_2b
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 440
    .line 441
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 442
    .line 443
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-nez v1, :cond_2c

    .line 448
    .line 449
    return v2

    .line 450
    :cond_2c
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 451
    .line 452
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 453
    .line 454
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-nez v1, :cond_2d

    .line 459
    .line 460
    return v2

    .line 461
    :cond_2d
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    .line 462
    .line 463
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-nez v1, :cond_2e

    .line 470
    .line 471
    return v2

    .line 472
    :cond_2e
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    .line 473
    .line 474
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    .line 475
    .line 476
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-nez v1, :cond_2f

    .line 481
    .line 482
    return v2

    .line 483
    :cond_2f
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    .line 484
    .line 485
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    .line 486
    .line 487
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_30

    .line 492
    .line 493
    return v2

    .line 494
    :cond_30
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    .line 495
    .line 496
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    .line 497
    .line 498
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-nez v1, :cond_31

    .line 503
    .line 504
    return v2

    .line 505
    :cond_31
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    .line 506
    .line 507
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    .line 508
    .line 509
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-nez v1, :cond_32

    .line 514
    .line 515
    return v2

    .line 516
    :cond_32
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 517
    .line 518
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 519
    .line 520
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-nez v1, :cond_33

    .line 525
    .line 526
    return v2

    .line 527
    :cond_33
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    .line 528
    .line 529
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    .line 530
    .line 531
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-nez v1, :cond_34

    .line 536
    .line 537
    return v2

    .line 538
    :cond_34
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    .line 539
    .line 540
    iget-object v3, p1, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    .line 541
    .line 542
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-nez v1, :cond_35

    .line 547
    .line 548
    return v2

    .line 549
    :cond_35
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    .line 550
    .line 551
    iget-object p1, p1, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    .line 552
    .line 553
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    if-nez p1, :cond_36

    .line 558
    .line 559
    return v2

    .line 560
    :cond_36
    return v0
.end method

.method public getAdditionalAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAmountAfterFee()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBalanceAfter()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBillName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBusinessCategory()Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCashback()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    .line 2
    .line 3
    return v0
.end method

.method public getChargebackData()Lteam/opay/core/api/GraphQL$ReferenceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChargedAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChargedBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCommisionAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoupon()Lteam/opay/core/api/GraphQL$Template;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscountAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFee()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMiscData()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNewCashBack()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 2
    .line 3
    return v0
.end method

.method public getNipTransactionRef()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaidAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayInformation()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaymentInstrument()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaymentInstrumentNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrincipalPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRechargePIN()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecipientAccount()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecipientBankName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReferrerAmount()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRefundData()Lteam/opay/core/api/GraphQL$ReferenceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRefunded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRevenueBreakdownList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSenderAccountNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSenderBankName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSenderPhone()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceType()Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStampDuty()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()Lteam/opay/core/api/GraphQL$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStateHint()Lteam/opay/core/api/GraphQL$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTerminalId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lteam/opay/core/api/GraphQL$TransactionType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeView()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVoucherAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    invoke-static {v1}, Lii8;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    invoke-static {v1}, Lii8;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ReferenceData;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ReferenceData;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Template;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 1
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_13

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_14

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_15

    :cond_15
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_16

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_17

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    if-nez v1, :cond_18

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    return v0
.end method

.method public final isInvestPaymentInstrument()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransaction;->getPaymentInstrument()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Investment"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransaction;->getPaymentInstrument()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Wallet"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransaction;->getSenderName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "owealth"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    return v0
.end method

.method public setSenderPhone(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 55
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    iget v1, v0, Lteam/opay/pay/history/UserTransaction;->id:I

    iget-object v2, v0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v3, v0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    iget-object v4, v0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    iget-object v5, v0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    iget-object v6, v0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    iget-object v7, v0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    iget-object v8, v0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    iget-object v9, v0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    iget-object v10, v0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    iget-object v11, v0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    iget v12, v0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    iget-object v13, v0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    iget-object v14, v0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    iget-boolean v15, v0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    move/from16 v16, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v24, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v25, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v26, v15

    iget-boolean v15, v0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    move/from16 v27, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    move-object/from16 v28, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    move-object/from16 v29, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    move-object/from16 v30, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    move-object/from16 v31, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    move-object/from16 v32, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    move-object/from16 v36, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    move-object/from16 v37, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v38, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v39, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v40, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    move-object/from16 v41, v15

    iget v15, v0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    move/from16 v42, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v43, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v44, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v45, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    move-object/from16 v46, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    move-object/from16 v47, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    move-object/from16 v48, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    move-object/from16 v49, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    move-object/from16 v50, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v51, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    move-object/from16 v52, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    move-object/from16 v53, v15

    iget-object v15, v0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v54, v15

    const-string v15, "UserTransaction(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrerAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentInstrument="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", principalPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refunded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recipientBankName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentInstrumentNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountAfterFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", balanceAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chargedBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chargebackData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refundData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senderPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderBankName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderAccountNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nipTransactionRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", businessName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", businessCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coupon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paidAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chargedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", discountAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", terminalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newCashBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", commisionAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stampDuty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", billName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rechargePIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", miscData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voucherAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", revenueBreakdownList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->id:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->amount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->referrer:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->referrerAmount:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->date:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->type:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrument:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->phoneNumber:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->principalPhoneNumber:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceType:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->cashback:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->state:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 95
    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->stateHint:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 113
    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    iget-boolean v0, p0, Lteam/opay/pay/history/UserTransaction;->refunded:Z

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientBankName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->transactionID:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->recipientAccount:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentInstrumentNumber:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->message:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->serviceID:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->amountAfterFee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 171
    .line 172
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->balanceAfter:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 176
    .line 177
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->fee:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 181
    .line 182
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    .line 184
    .line 185
    iget-boolean v0, p0, Lteam/opay/pay/history/UserTransaction;->chargedBack:Z

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->chargebackData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->refundData:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderPhone:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderBankName:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->senderAccountNumber:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->nipTransactionRef:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->businessName:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 231
    .line 232
    if-nez v0, :cond_4

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_4
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->coupon:Lteam/opay/core/api/GraphQL$Template;

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paidAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 254
    .line 255
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->chargedAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 259
    .line 260
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->discountAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 264
    .line 265
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->terminalId:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget v0, p0, Lteam/opay/pay/history/UserTransaction;->newCashBack:F

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->commisionAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 279
    .line 280
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->additionalAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 284
    .line 285
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->stampDuty:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 289
    .line 290
    if-nez v0, :cond_5

    .line 291
    .line 292
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    .line 301
    .line 302
    :goto_5
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->billName:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->payInformation:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->rechargePIN:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->miscData:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->paymentType:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->voucherAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 328
    .line 329
    if-nez v0, :cond_6

    .line 330
    .line 331
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    .line 340
    .line 341
    :goto_6
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->typeView:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->opType:Ljava/lang/Integer;

    .line 347
    .line 348
    if-nez v0, :cond_7

    .line 349
    .line 350
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    .line 363
    .line 364
    :goto_7
    iget-object v0, p0, Lteam/opay/pay/history/UserTransaction;->revenueBreakdownList:Ljava/util/List;

    .line 365
    .line 366
    if-nez v0, :cond_8

    .line 367
    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    .line 381
    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_9

    .line 391
    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    check-cast v1, Lteam/opay/core/api/GraphQL$RevenueBreakdown;

    .line 397
    .line 398
    invoke-virtual {v1, p1, p2}, Lteam/opay/core/api/GraphQL$RevenueBreakdown;->writeToParcel(Landroid/os/Parcel;I)V

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_9
    :goto_9
    return-void
.end method
